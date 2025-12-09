# ================================
# High Performance Multi-Arch Makefile
# Automatically selects optimal compiler & flags for:
# - x86_64 (native tuning)
# - ARM64 / AArch64 (NEON + ARMv8-A tuning)
# ================================

# --------------------------------
# Detect architecture
# --------------------------------
ARCH := $(shell uname -m)

# --------------------------------
# Detect compiler (clang preferred)
# --------------------------------
ifeq ($(shell which clang++ 2>/dev/null),)
    CXX := g++
else
    CXX := clang++
endif

# --------------------------------
# Set compiler flags based on arch
# --------------------------------
ifeq ($(ARCH),aarch64)
	CXXFLAGS_OPT := -O3 -Ofast -march=armv8-a+simd -mtune=generic -funroll-loops -flto -ffast-math -fomit-frame-pointer -std=c++20 -Iinclude
	CXXFLAGS_NOOPT := -O0 -march=armv8-a+simd -mtune=generic -std=c++20 -Iinclude
else
	CXXFLAGS_OPT := -O3 -Ofast -march=native -mtune=native -funroll-loops -flto -fomit-frame-pointer -std=c++20 -Iinclude
	CXXFLAGS_NOOPT := -O0 -march=native -mtune=native -std=c++20 -Iinclude
endif

# --------------------------------
# Paths
# --------------------------------
SRC_DIR   := src
BUILD_DIR := build

# find all .cpp files
ifeq ($(ARCH),aarch64)
	SOURCES := $(wildcard $(SRC_DIR)/*.cpp)
else
	SOURCES := $(filter-out $(SRC_DIR)/bench_reist_arm.cpp,$(wildcard $(SRC_DIR)/*.cpp))
endif
# derive output binaries
BINS_OPT := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_opt,$(SOURCES))
BINS_NOOPT := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_noopt,$(SOURCES))

all: $(BUILD_DIR) $(BINS_OPT) $(BINS_NOOPT)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# compile each source into build/<binary>
$(BUILD_DIR)/%_opt: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS_OPT) $< -o $@

$(BUILD_DIR)/%_noopt: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS_NOOPT) $< -o $@

clean:
	rm -rf $(BUILD_DIR)

list:
	@echo "Architecture: $(ARCH)"
	@echo "Compiler: $(CXX)"
	@echo "Optimized Flags: $(CXXFLAGS_OPT)"
	@echo "No-Opt Flags: $(CXXFLAGS_NOOPT)"
	@echo "Sources: $(SOURCES)"
	@echo "Optimized Binaries: $(BINS_OPT)"
	@echo "No-Opt Binaries: $(BINS_NOOPT)"

# ======================================

# Run all optimized benchmarks
run_optimized: all
	@echo "Running bench_modadd_suite (O3)..."
	@$(BUILD_DIR)/bench_modadd_suite_opt || true
	@echo

	@echo "Running bench_poly_mod (O3)..."
	@$(BUILD_DIR)/bench_poly_mod_opt || true
	@echo

	@echo "Running bench_modular (O3)..."
	@$(BUILD_DIR)/bench_modular_opt || true
	@echo

	@echo "Running bench_chacha_reist (O3)..."
	@$(BUILD_DIR)/bench_chacha_reist_opt || true
	@echo

	@echo "Running bench_chacha_stream (O3)..."
	@$(BUILD_DIR)/bench_chacha_stream_opt || true
	@echo

	@echo "Running bench_hashmix (O3)..."
	@$(BUILD_DIR)/bench_hashmix_opt || true
	@echo

ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O3)..."
	@$(BUILD_DIR)/bench_reist_arm_opt || true
	@echo
endif

# Run all no-opt benchmarks
run: all
	@echo "Running bench_modadd_suite (O0)..."
	@$(BUILD_DIR)/bench_modadd_suite_noopt || true
	@echo

	@echo "Running bench_poly_mod (O0)..."
	@$(BUILD_DIR)/bench_poly_mod_noopt || true
	@echo

	@echo "Running bench_modular (O0)..."
	@$(BUILD_DIR)/bench_modular_noopt || true
	@echo

	@echo "Running bench_chacha_reist (O0)..."
	@$(BUILD_DIR)/bench_chacha_reist_noopt || true
	@echo

	@echo "Running bench_chacha_stream (O0)..."
	@$(BUILD_DIR)/bench_chacha_stream_noopt || true
	@echo

	@echo "Running bench_hashmix (O0)..."
	@$(BUILD_DIR)/bench_hashmix_noopt || true
	@echo

ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O0)..."
	@$(BUILD_DIR)/bench_reist_arm_noopt || true
	@echo
endif
