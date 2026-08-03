# Reproducible multi-architecture build for the validated REIST artifacts.
# `make` builds code and tests; benchmarks are never run implicitly.

# Timed profiles must never compete for CPU resources, even under `make -j`.
.NOTPARALLEL: run run-noopt run-optimized run-simd smoke

CXX ?= g++
PYTHON ?= python3
TARGET_TRIPLE := $(shell $(CXX) -dumpmachine)
CXX_VERSION_TEXT := $(shell $(CXX) --version)

ifeq ($(OS),Windows_NT)
  EXE_EXT := .exe
  PYTHON := python
  NULL_INPUT := NUL
else
  EXE_EXT :=
  NULL_INPUT := /dev/null
endif

# Use one shell-independent implementation under cmd.exe, PowerShell and Git Bash.
MKDIR_BUILD = cmake -E make_directory "$(BUILD_DIR)"
CLEAN_BUILD = cmake -E remove_directory "$(BUILD_DIR)"

ifndef RUN_SESSION
  RUN_SESSION := $(shell $(PYTHON) -c "import datetime; print(datetime.datetime.now().strftime('%Y%m%d_%H%M%S_%f'))")
endif

INT128_MACRO := $(findstring __SIZEOF_INT128__,$(shell $(CXX) -dM -E -x c++ $(NULL_INPUT)))
ifneq ($(INT128_MACRO),)
  INT128_SOURCES = \
    $(SRC_DIR)/bench_montgomery.cpp \
    $(SRC_DIR)/bench_barret_reist.cpp
else
  INT128_SOURCES :=
endif

ifneq ($(or $(findstring aarch64,$(TARGET_TRIPLE)),$(findstring arm64,$(TARGET_TRIPLE))),)
  HOST_ARCH := aarch64
else ifneq ($(or $(findstring x86_64,$(TARGET_TRIPLE)),$(findstring amd64,$(TARGET_TRIPLE))),)
  HOST_ARCH := x86_64
else
  HOST_ARCH := $(firstword $(subst -, ,$(TARGET_TRIPLE)))
endif

ifeq ($(OS),Windows_NT)
  THREAD_FLAGS :=
else
  THREAD_FLAGS := -pthread
endif

BUILD_DIR := build
SRC_DIR := src
TEST_DIR := tests
PROVENANCE_WRITER := scripts/write_build_provenance.py

CPPFLAGS := -Iinclude
COMMON_FLAGS := -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion
ifneq ($(findstring clang,$(CXX_VERSION_TEXT)),)
  NO_VECTORIZE_FLAGS := -fno-vectorize -fno-slp-vectorize
else
  NO_VECTORIZE_FLAGS := -fno-tree-vectorize
endif
NOOPT_FLAGS := -O0 -g $(NO_VECTORIZE_FLAGS)
OPT_FLAGS := -O3 -DNDEBUG -march=native

ifeq ($(HOST_ARCH),aarch64)
  SIMD_FLAGS := -O3 -DNDEBUG -march=armv8-a+simd
  ARCH_SOURCES := $(SRC_DIR)/bench_modadd_suite_neon.cpp
else ifeq ($(HOST_ARCH),x86_64)
  SIMD_FLAGS := -O3 -DNDEBUG -march=native -mavx2
  ARCH_SOURCES :=
else
  SIMD_FLAGS := -O3 -DNDEBUG
  ARCH_SOURCES :=
endif

NOOPT_BUILD_FLAGS = $(CPPFLAGS) $(COMMON_FLAGS) $(NOOPT_FLAGS) -MMD -MP
OPT_BUILD_FLAGS = $(CPPFLAGS) $(COMMON_FLAGS) $(OPT_FLAGS) -MMD -MP
SIMD_BUILD_FLAGS = $(CPPFLAGS) $(COMMON_FLAGS) $(SIMD_FLAGS) -MMD -MP
PROVENANCE_INPUTS = $(foreach header,$(HEADERS),--input "$(header)")
RUN_RESULT_OPTION = $(if $(strip $(RUN_RESULT_DIR)),--result-dir "$(RUN_RESULT_DIR)",)
RUN_QUICK ?=
INTRINSIC_SCALING_RESULT_DIR ?= \
  $(BUILD_DIR)/intrinsic-scaling-$(RUN_SESSION)
INTRINSIC_SCALING_ARGS ?=
INTRINSIC_COMPLEXITY_RESULT_DIR ?= \
  $(BUILD_DIR)/intrinsic-complexity-$(RUN_SESSION)
INTRINSIC_COMPLEXITY_ARGS ?=

INTRINSIC_DISPATCH_OBJ := $(BUILD_DIR)/reist_intrinsics_dispatch.o
INTRINSIC_BENCH_OBJ := $(BUILD_DIR)/bench_reist_intrinsics.o
INTRINSIC_CONST_PORTABLE_OBJ := \
  $(BUILD_DIR)/bench_reist_intrinsics_const_portable.o
INTRINSIC_CONST_BACKEND_OBJ :=
INTRINSIC_CONST_BENCH_DEFINE :=
INTRINSIC_TEST_OBJ := $(BUILD_DIR)/test_reist_intrinsics.o
INTRINSIC_BENCH_BIN := $(BUILD_DIR)/bench_reist_intrinsics_diagnostic$(EXE_EXT)
INTRINSIC_TEST_BIN := $(BUILD_DIR)/test_reist_intrinsics$(EXE_EXT)
INTRINSIC_BACKEND_OBJ :=
INTRINSIC_BACKEND_DEFINE :=
INTRINSIC_BACKEND_FLAGS :=

ifeq ($(HOST_ARCH),x86_64)
  INTRINSIC_BACKEND_OBJ := $(BUILD_DIR)/reist_intrinsics_avx2.o
  INTRINSIC_BACKEND_DEFINE := -DREIST_HAVE_AVX2_BACKEND=1
  INTRINSIC_BACKEND_FLAGS := -O3 -DNDEBUG -mavx2
  INTRINSIC_CONST_BACKEND_OBJ := \
    $(BUILD_DIR)/bench_reist_intrinsics_const_avx2.o
  INTRINSIC_CONST_BENCH_DEFINE := -DREIST_BENCH_HAVE_AVX2_CONST=1
else ifeq ($(HOST_ARCH),aarch64)
  INTRINSIC_BACKEND_OBJ := $(BUILD_DIR)/reist_intrinsics_neon.o
  INTRINSIC_BACKEND_DEFINE := -DREIST_HAVE_NEON_BACKEND=1
  INTRINSIC_BACKEND_FLAGS := -O3 -DNDEBUG -march=armv8-a+simd
  INTRINSIC_CONST_BACKEND_OBJ := \
    $(BUILD_DIR)/bench_reist_intrinsics_const_neon.o
  INTRINSIC_CONST_BENCH_DEFINE := -DREIST_BENCH_HAVE_NEON_CONST=1
endif

# Only these programs are suitable for manifest-backed paper measurements.
# The narrower, correctness-checked experiments below are built separately and
# are never selected by the report runner.
VALIDATED_SOURCES := \
  $(SRC_DIR)/bench_modadd_suite.cpp \
  $(SRC_DIR)/bench_poly_mod.cpp \
  $(SRC_DIR)/bench_modular.cpp \
  $(SRC_DIR)/bench_chacha_stream.cpp \
  $(SRC_DIR)/bench_hashmix.cpp \
  $(INT128_SOURCES) \
  $(ARCH_SOURCES)

DIAGNOSTIC_SOURCES := \
  $(SRC_DIR)/bench_mont_vs_reist_tree_ntt.cpp \
  $(SRC_DIR)/bench_reist_arm.cpp \
  $(SRC_DIR)/bench_tree_reist.cpp \
  $(SRC_DIR)/bench_tree_reist_avx2.cpp \
  $(SRC_DIR)/bench_tree_reist_neon.cpp \
  $(SRC_DIR)/reist_neon_diag_mt.cpp

HEADERS := $(wildcard include/*.hpp)
NOOPT_BINS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_noopt$(EXE_EXT),$(VALIDATED_SOURCES))
OPT_BINS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_opt$(EXE_EXT),$(VALIDATED_SOURCES))
SIMD_BINS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_simd$(EXE_EXT),$(VALIDATED_SOURCES))
TEST_BIN := $(BUILD_DIR)/test_reist$(EXE_EXT)
SANITIZER_BIN := $(BUILD_DIR)/test_reist_sanitized$(EXE_EXT)
SANITIZER_INTRINSIC_BIN := \
  $(BUILD_DIR)/test_reist_intrinsics_sanitized$(EXE_EXT)
DIAGNOSTIC_BINS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_diagnostic$(EXE_EXT),$(DIAGNOSTIC_SOURCES))

all: validated diagnostics test

validated: noopt optimized simd

noopt: $(NOOPT_BINS)

optimized: $(OPT_BINS)

simd: $(SIMD_BINS)

diagnostics: $(DIAGNOSTIC_BINS) $(INTRINSIC_BENCH_BIN)

$(BUILD_DIR):
	@$(MKDIR_BUILD)

$(BUILD_DIR)/%_noopt$(EXE_EXT): $(SRC_DIR)/%.cpp $(HEADERS) $(PROVENANCE_WRITER) FORCE | $(BUILD_DIR)
	$(CXX) $(NOOPT_BUILD_FLAGS) $< -o $@
	$(PYTHON) $(PROVENANCE_WRITER) --binary "$@" --source "$<" \
		$(PROVENANCE_INPUTS) --compiler "$(CXX)" \
		--flags "$(NOOPT_BUILD_FLAGS)" \
		--command "$(CXX) $(NOOPT_BUILD_FLAGS) $< -o $@" \
		--build-system make --profile O0

$(BUILD_DIR)/%_opt$(EXE_EXT): $(SRC_DIR)/%.cpp $(HEADERS) $(PROVENANCE_WRITER) FORCE | $(BUILD_DIR)
	$(CXX) $(OPT_BUILD_FLAGS) $< -o $@
	$(PYTHON) $(PROVENANCE_WRITER) --binary "$@" --source "$<" \
		$(PROVENANCE_INPUTS) --compiler "$(CXX)" \
		--flags "$(OPT_BUILD_FLAGS)" \
		--command "$(CXX) $(OPT_BUILD_FLAGS) $< -o $@" \
		--build-system make --profile O3

$(BUILD_DIR)/%_simd$(EXE_EXT): $(SRC_DIR)/%.cpp $(HEADERS) $(PROVENANCE_WRITER) FORCE | $(BUILD_DIR)
	$(CXX) $(SIMD_BUILD_FLAGS) $< -o $@
	$(PYTHON) $(PROVENANCE_WRITER) --binary "$@" --source "$<" \
		$(PROVENANCE_INPUTS) --compiler "$(CXX)" \
		--flags "$(SIMD_BUILD_FLAGS)" \
		--command "$(CXX) $(SIMD_BUILD_FLAGS) $< -o $@" \
		--build-system make --profile SIMD

$(BUILD_DIR)/%_diagnostic$(EXE_EXT): $(SRC_DIR)/%.cpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O2 $(THREAD_FLAGS) -MMD -MP $< -o $@

$(INTRINSIC_DISPATCH_OBJ): $(SRC_DIR)/reist_intrinsics_dispatch.cpp \
        $(SRC_DIR)/reist_intrinsics_backend.hpp \
        $(SRC_DIR)/reist_intrinsics_avx2.hpp \
        $(SRC_DIR)/reist_intrinsics_neon.hpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O3 -DNDEBUG \
		$(INTRINSIC_BACKEND_DEFINE) -MMD -MP -c $< -o $@

$(BUILD_DIR)/reist_intrinsics_avx2.o: \
        $(SRC_DIR)/reist_intrinsics_avx2.cpp \
        $(SRC_DIR)/reist_intrinsics_avx2.hpp \
        $(SRC_DIR)/reist_intrinsics_backend.hpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) $(INTRINSIC_BACKEND_FLAGS) \
		$(INTRINSIC_BACKEND_DEFINE) \
		-MMD -MP -c $< -o $@

$(BUILD_DIR)/reist_intrinsics_neon.o: \
        $(SRC_DIR)/reist_intrinsics_neon.cpp \
        $(SRC_DIR)/reist_intrinsics_neon.hpp \
        $(SRC_DIR)/reist_intrinsics_backend.hpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) $(INTRINSIC_BACKEND_FLAGS) \
		$(INTRINSIC_BACKEND_DEFINE) \
		-MMD -MP -c $< -o $@

$(INTRINSIC_BENCH_OBJ): $(SRC_DIR)/bench_reist_intrinsics.cpp $(HEADERS) \
        $(SRC_DIR)/bench_reist_intrinsics_const.hpp \
        | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O3 -DNDEBUG \
		-DREIST_INTRINSIC_BENCH_OPTIMIZED=1 \
		$(INTRINSIC_CONST_BENCH_DEFINE) -MMD -MP -c $< -o $@

$(INTRINSIC_CONST_PORTABLE_OBJ): \
		$(SRC_DIR)/bench_reist_intrinsics_const_portable.cpp \
		$(SRC_DIR)/bench_reist_intrinsics_const_impl.hpp \
		$(SRC_DIR)/bench_reist_intrinsics_const.hpp | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O3 -DNDEBUG \
		-MMD -MP -c $< -o $@

$(BUILD_DIR)/bench_reist_intrinsics_const_avx2.o: \
		$(SRC_DIR)/bench_reist_intrinsics_const_avx2.cpp \
		$(SRC_DIR)/bench_reist_intrinsics_const_impl.hpp \
		$(SRC_DIR)/bench_reist_intrinsics_const.hpp | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) $(INTRINSIC_BACKEND_FLAGS) \
		-MMD -MP -c $< -o $@

$(BUILD_DIR)/bench_reist_intrinsics_const_neon.o: \
		$(SRC_DIR)/bench_reist_intrinsics_const_neon.cpp \
		$(SRC_DIR)/bench_reist_intrinsics_const_impl.hpp \
		$(SRC_DIR)/bench_reist_intrinsics_const.hpp | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) $(INTRINSIC_BACKEND_FLAGS) \
		-MMD -MP -c $< -o $@

$(INTRINSIC_TEST_OBJ): $(TEST_DIR)/test_reist_intrinsics.cpp $(HEADERS) \
        | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O2 -MMD -MP -c $< -o $@

$(INTRINSIC_BENCH_BIN): $(INTRINSIC_BENCH_OBJ) \
        $(INTRINSIC_CONST_PORTABLE_OBJ) $(INTRINSIC_CONST_BACKEND_OBJ) \
        $(INTRINSIC_DISPATCH_OBJ) $(INTRINSIC_BACKEND_OBJ)
	$(CXX) $^ -o $@

$(INTRINSIC_TEST_BIN): $(INTRINSIC_TEST_OBJ) \
        $(INTRINSIC_DISPATCH_OBJ) $(INTRINSIC_BACKEND_OBJ)
	$(CXX) $^ -o $@

ifeq ($(HOST_ARCH),x86_64)
$(BUILD_DIR)/bench_tree_reist_avx2_diagnostic$(EXE_EXT): $(SRC_DIR)/bench_tree_reist_avx2.cpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) $(SIMD_FLAGS) -MMD -MP $< -o $@
endif

$(TEST_BIN): $(TEST_DIR)/test_reist.cpp $(HEADERS) | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O2 -MMD -MP $< -o $@

test: $(TEST_BIN) $(INTRINSIC_TEST_BIN)
	$(TEST_BIN)
	$(INTRINSIC_TEST_BIN)

sanitizers: | $(BUILD_DIR)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O1 -g -fno-omit-frame-pointer \
		-fsanitize=address,undefined $(TEST_DIR)/test_reist.cpp -o $(SANITIZER_BIN)
	$(SANITIZER_BIN)
	$(CXX) $(CPPFLAGS) $(COMMON_FLAGS) -O1 -g -fno-omit-frame-pointer \
		-fsanitize=address,undefined $(TEST_DIR)/test_reist_intrinsics.cpp \
		$(SRC_DIR)/reist_intrinsics_dispatch.cpp \
		-o $(SANITIZER_INTRINSIC_BIN)
	$(SANITIZER_INTRINSIC_BIN)

# Full benchmark runs. The Python runner stops on the first non-zero exit and
# writes an environment/command/binary-hash manifest next to the raw results.
run-noopt: noopt
	$(PYTHON) scripts/run_benchmarks.py --build-dir $(BUILD_DIR) --suffix _noopt \
		--label O0 --session-id $(RUN_SESSION) --compiler "$(CXX)" \
		--build-system make --build-profile O0 \
		--build-flags="$(NOOPT_BUILD_FLAGS)" $(RUN_RESULT_OPTION) $(RUN_QUICK)

run-optimized: optimized
	$(PYTHON) scripts/run_benchmarks.py --build-dir $(BUILD_DIR) --suffix _opt \
		--label O3 --session-id $(RUN_SESSION) --compiler "$(CXX)" \
		--build-system make --build-profile O3 \
		--build-flags="$(OPT_BUILD_FLAGS)" $(RUN_RESULT_OPTION) $(RUN_QUICK)

run-simd: simd
	$(PYTHON) scripts/run_benchmarks.py --build-dir $(BUILD_DIR) --suffix _simd \
		--label SIMD --session-id $(RUN_SESSION) --compiler "$(CXX)" \
		--build-system make --build-profile SIMD \
		--build-flags="$(SIMD_BUILD_FLAGS)" $(RUN_RESULT_OPTION) $(RUN_QUICK)

run: run-noopt run-optimized run-simd

smoke: validated
	$(PYTHON) scripts/run_benchmarks.py --build-dir $(BUILD_DIR) --suffix _opt \
		--label O3-smoke --session-id $(RUN_SESSION) --compiler "$(CXX)" \
		--build-system make --build-profile O3 \
		--build-flags="$(OPT_BUILD_FLAGS)" $(RUN_RESULT_OPTION) --quick

# Complete, predeclared constant-%/REIST matrix. Each invocation uses a fresh
# timestamped directory unless INTRINSIC_SCALING_RESULT_DIR is overridden.
intrinsic-scaling: $(INTRINSIC_BENCH_BIN)
	$(PYTHON) scripts/run_reist_intrinsic_scaling.py \
		--binary "$(INTRINSIC_BENCH_BIN)" \
		--result-dir "$(INTRINSIC_SCALING_RESULT_DIR)" $(INTRINSIC_SCALING_ARGS)

# Fixed-repetition N sweep for empirical complexity characterization. Unlike
# intrinsic-scaling, this target never rescales repetitions as N grows.
intrinsic-complexity: $(INTRINSIC_BENCH_BIN)
	$(PYTHON) scripts/run_reist_intrinsic_complexity.py \
		--binary "$(INTRINSIC_BENCH_BIN)" \
		--result-dir "$(INTRINSIC_COMPLEXITY_RESULT_DIR)" $(INTRINSIC_COMPLEXITY_ARGS)

report:
	$(PYTHON) scripts/generate_benchmark_report.py --compiler "$(CXX)" \
		$(RUN_RESULT_OPTION) $(REPORT_ARGS)

compiler-artifacts: optimized
	$(PYTHON) scripts/check_compiler_artifacts.py --build-dir $(BUILD_DIR) \
		--compiler "$(CXX)" --flags "$(CPPFLAGS) $(COMMON_FLAGS) $(OPT_FLAGS)"

list:
	@echo Host architecture: $(HOST_ARCH)
	@echo Compiler: $(CXX)
	@echo Run session: $(RUN_SESSION)
	@echo Validated sources: $(VALIDATED_SOURCES)
	@echo O0 flags: $(NOOPT_BUILD_FLAGS)
	@echo O3 flags: $(OPT_BUILD_FLAGS)
	@echo SIMD flags: $(SIMD_BUILD_FLAGS)

clean:
	@$(CLEAN_BUILD)

# Always rebuild timed binaries before refreshing their sidecars. This avoids
# stale binaries when CXX or command-line flag variables change between calls.
FORCE:

.PHONY: all validated diagnostics noopt optimized simd test sanitizers run run-noopt \
	run-optimized run-simd smoke intrinsic-scaling intrinsic-complexity report compiler-artifacts \
	list clean FORCE

-include $(wildcard $(BUILD_DIR)/*.d)
