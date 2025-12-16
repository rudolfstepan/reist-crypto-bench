# ================================
# High Performance Multi-Arch Makefile
# Automatically selects optimal compiler & flags for:
# - x86_64 (native tuning)
# - ARM64 / AArch64 (NEON + ARMv8-A tuning)
# ================================


# --------------------------------
# Detect OS and architecture
# --------------------------------
ifeq ($(OS),Windows_NT)
	IS_WINDOWS := 1
	MKDIR = if not exist $(1) mkdir $(1)
	MOVE = move
	PYTHON = python
	RM = rmdir /S /Q $(1)
	FILE_EXISTS = if exist $(1)
	SLASH = \\
	ARCH := x86_64
else
	IS_WINDOWS := 0
	MKDIR = mkdir -p $(1)
	MOVE = mv
	PYTHON = python3
	RM = rm -rf $(1)
	FILE_EXISTS = [ -f $(1) ]
	SLASH = /
	ARCH := $(shell uname -m)
endif

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
	# ARM64/AArch64 flags
	CXXFLAGS_NOOPT := -O0 -fno-tree-vectorize -march=armv8-a -std=c++20 -Iinclude
	CXXFLAGS_OPT := -O3 -march=armv8-a -mtune=generic -flto -fomit-frame-pointer -std=c++20 -Iinclude
	CXXFLAGS_SIMD := -O3 -march=armv8-a+simd -mtune=generic -flto -std=c++20 -Iinclude
else
	# x86_64 flags
	CXXFLAGS_NOOPT := -O0 -fno-tree-vectorize -march=native -std=c++20 -Iinclude
	CXXFLAGS_OPT := -O3 -march=native -mtune=native -flto -fomit-frame-pointer -std=c++20 -Iinclude
	CXXFLAGS_SIMD := -O3 -march=native -mtune=native -mavx2 -flto -std=c++20 -Iinclude
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
BINS_NOOPT := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_noopt$(EXE_EXT),$(SOURCES))
BINS_OPT := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_opt$(EXE_EXT),$(SOURCES))
BINS_SIMD := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%_simd$(EXE_EXT),$(SOURCES))

all: $(BUILD_DIR) $(BINS_NOOPT) $(BINS_OPT) $(BINS_SIMD) run_all_benchmarks_sequential

run_all_benchmarks_sequential: run
	@$(MAKE) run_optimized_after_run

run_optimized_after_run: run_optimized
	@$(MAKE) run_simd_after_opt

run_simd_after_opt: run_simd
	@$(MAKE) generate_report_final

generate_report_final: plot_comparison report
	@echo ""
	@echo "=========================================="
	@echo "Complete benchmark analysis finished!"
	@echo "=========================================="

run_all_benchmarks: run run_optimized run_simd
	@echo ""
	@echo "=========================================="
	@echo "All benchmark runs completed!"
	@echo "=========================================="

generate_report: plot_comparison report
	@echo ""
	@echo "=========================================="
	@echo "Complete benchmark analysis finished!"
	@echo "=========================================="

$(BUILD_DIR):
ifeq ($(IS_WINDOWS),1)
	$(call MKDIR,$(BUILD_DIR))
else
	$(call MKDIR,$(BUILD_DIR))
endif

# compile each source into build/<binary>
$(BUILD_DIR)/%_noopt$(EXE_EXT): $(SRC_DIR)/%.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS_NOOPT) $< -o $@

$(BUILD_DIR)/%_opt$(EXE_EXT): $(SRC_DIR)/%.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS_OPT) $< -o $@

$(BUILD_DIR)/%_simd$(EXE_EXT): $(SRC_DIR)/%.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS_SIMD) $< -o $@

clean:
ifeq ($(IS_WINDOWS),1)
	$(call RM,$(BUILD_DIR))
else
	$(call RM,$(BUILD_DIR))
endif

list:
	@echo "Architecture: $(ARCH)"
	@echo "Compiler: $(CXX)"
	@echo "No-Opt Flags:  $(CXXFLAGS_NOOPT)"
	@echo "Optimized Flags: $(CXXFLAGS_OPT)"
	@echo "SIMD Flags:    $(CXXFLAGS_SIMD)"
	@echo "Sources: $(SOURCES)"
	@echo "No-Opt Binaries: $(BINS_NOOPT)"
	@echo "Optimized Binaries: $(BINS_OPT)"
	@echo "SIMD Binaries: $(BINS_SIMD)"

# ======================================


# Timestamp for results
ifeq ($(IS_WINDOWS),1)
    TIMESTAMP := $(shell powershell -Command "Get-Date -Format 'yyyyMMdd_HHmmss'")
    RESULT_DIR := tests\\results\\x86
else
    TIMESTAMP := $(shell date +%Y%m%d_%H%M%S)
    RESULT_DIR := tests/results/$(if $(filter aarch64,$(ARCH)),arm,x86)
endif

run_optimized:
ifeq ($(IS_WINDOWS),1)
	@if not exist $(RESULT_DIR) mkdir $(RESULT_DIR)
else
	@mkdir -p $(RESULT_DIR)
endif
	@echo "Running bench_modadd_suite (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modadd_suite_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_modadd_suite_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modadd_suite_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modadd_suite_O3.txt || true
endif
	@echo

	@echo "Running bench_poly_mod (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_poly_mod_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_poly_mod_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_poly_mod_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_poly_mod_O3.txt || true
endif
	@echo

	@echo "Running bench_modular (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modular_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_modular_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modular_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modular_O3.txt || true
endif
	@echo

	@echo "Running bench_chacha_reist (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_reist_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_reist_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_reist_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_reist_O3.txt || true
endif
	@echo

	@echo "Running bench_chacha_stream (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_stream_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_stream_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_stream_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_stream_O3.txt || true
endif
	@echo

	@echo "Running bench_hashmix (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_hashmix_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_hashmix_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_hashmix_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_hashmix_O3.txt || true
endif
	@echo

	@echo "Running bench_montgomery (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_montgomery_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_montgomery_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_montgomery_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_montgomery_O3.txt || true
endif
	@echo

	@echo "Running bench_barret_reist (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_barret_reist_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_barret_reist_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_barret_reist_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_barret_reist_O3.txt || true
endif
	@echo


ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O3)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_reist_arm_opt > $(RESULT_DIR)\$(TIMESTAMP)_bench_reist_arm_O3.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_reist_arm_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_reist_arm_O3.txt || true
endif
	@echo
endif

ifeq ($(IS_WINDOWS),1)
	@if exist results_modadd_suite.csv $(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv
	@if exist results_poly_mod.csv $(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv
	@echo Generating plots...
	@set RESULT_TIMESTAMP=$(TIMESTAMP) && $(PYTHON) scripts\plot_benchmarks.py || echo WARNING: plotting script failed
else
	@if [ -f results_modadd_suite.csv ]; then \
		$(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv"; \
	else \
		echo "WARNING: results_modadd_suite.csv not found"; \
	fi
	@if [ -f results_poly_mod.csv ]; then \
		$(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv"; \
	else \
		echo "WARNING: results_poly_mod.csv not found"; \
	fi
	@echo "Generating plots..."
	@RESULT_TIMESTAMP=$(TIMESTAMP) $(PYTHON) scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"
endif

# Run all SIMD-optimized benchmarks  
run_simd:
ifeq ($(IS_WINDOWS),1)
	@if not exist $(RESULT_DIR) mkdir $(RESULT_DIR)
else
	@mkdir -p $(RESULT_DIR)
endif
	@echo "Running bench_modadd_suite (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modadd_suite_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_modadd_suite_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modadd_suite_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_modadd_suite_SIMD.txt || true
endif
	@echo

	@echo "Running bench_poly_mod (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_poly_mod_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_poly_mod_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_poly_mod_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_poly_mod_SIMD.txt || true
endif
	@echo

	@echo "Running bench_modular (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modular_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_modular_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modular_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_modular_SIMD.txt || true
endif
	@echo

	@echo "Running bench_chacha_reist (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_reist_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_reist_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_reist_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_reist_SIMD.txt || true
endif
	@echo

	@echo "Running bench_chacha_stream (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_stream_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_stream_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_stream_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_stream_SIMD.txt || true
endif
	@echo

	@echo "Running bench_hashmix (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_hashmix_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_hashmix_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_hashmix_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_hashmix_SIMD.txt || true
endif
	@echo

	@echo "Running bench_montgomery (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_montgomery_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_montgomery_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_montgomery_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_montgomery_SIMD.txt || true
endif
	@echo

	@echo "Running bench_barret_reist (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_barret_reist_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_barret_reist_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_barret_reist_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_barret_reist_SIMD.txt || true
endif
	@echo


ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (SIMD)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_reist_arm_simd > $(RESULT_DIR)\$(TIMESTAMP)_bench_reist_arm_SIMD.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_reist_arm_simd > $(RESULT_DIR)/$(TIMESTAMP)_bench_reist_arm_SIMD.txt || true
endif
	@echo
endif

ifeq ($(IS_WINDOWS),1)
	@if exist results_modadd_suite.csv $(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv
	@if exist results_poly_mod.csv $(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv
	@echo Generating plots...
	@set RESULT_TIMESTAMP=$(TIMESTAMP) && $(PYTHON) scripts\plot_benchmarks.py || echo WARNING: plotting script failed
else
	@if [ -f results_modadd_suite.csv ]; then \
		$(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv"; \
	else \
		echo "WARNING: results_modadd_suite.csv not found"; \
	fi
	@if [ -f results_poly_mod.csv ]; then \
		$(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv"; \
	else \
		echo "WARNING: results_poly_mod.csv not found"; \
	fi
	@echo "Generating plots..."
	@RESULT_TIMESTAMP=$(TIMESTAMP) $(PYTHON) scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"
endif

# Generate optimization comparison plots from existing results
plot_comparison:
	@echo "=========================================="
	@echo "Generating Optimization Comparison Plots"
	@echo "=========================================="
ifeq ($(IS_WINDOWS),1)
	@$(PYTHON) scripts\plot_benchmarks.py || echo WARNING: plotting script failed
else
	@$(PYTHON) scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"
endif
	@echo ""
	@echo "Comparison plots generated successfully!"
ifeq ($(IS_WINDOWS),1)
	@echo "Check tests\results\x86\ for the plots"
else
	@echo "Check tests/results/$(if $(filter aarch64,$(ARCH)),arm,x86)/ for the plots"
endif

# Generate comprehensive benchmark documentation comparing O0 vs O3
report:
	@echo "=========================================="
	@echo "Generating Benchmark Documentation"
	@echo "=========================================="
	@$(PYTHON) scripts$(SLASH)generate_benchmark_report.py
	@echo ""
	@echo "Documentation generated successfully!"
ifeq ($(IS_WINDOWS),1)
	@echo "Check tests\results\x86\ for the report"
else
	@echo "Check tests/results/$(if $(filter aarch64,$(ARCH)),arm,x86)/ for the report"
endif

.PHONY: all clean list run run_optimized run_simd plot_comparison report

# Run all no-opt benchmarks
run:
ifeq ($(IS_WINDOWS),1)
	@if not exist $(RESULT_DIR) mkdir $(RESULT_DIR)
else
	@mkdir -p $(RESULT_DIR)
endif
	@echo "Running bench_modadd_suite (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modadd_suite_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_modadd_suite_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modadd_suite_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modadd_suite_O0.txt || true
endif
	@echo

	@echo "Running bench_poly_mod (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_poly_mod_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_poly_mod_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_poly_mod_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_poly_mod_O0.txt || true
endif
	@echo

	@echo "Running bench_modular (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_modular_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_modular_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_modular_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modular_O0.txt || true
endif
	@echo

	@echo "Running bench_chacha_reist (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_reist_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_reist_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_reist_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_reist_O0.txt || true
endif
	@echo

	@echo "Running bench_chacha_stream (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_chacha_stream_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_chacha_stream_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_chacha_stream_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_stream_O0.txt || true
endif
	@echo

	@echo "Running bench_hashmix (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_hashmix_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_hashmix_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_hashmix_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_hashmix_O0.txt || true
endif
	@echo

	@echo "Running bench_montgomery (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_montgomery_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_montgomery_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_montgomery_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_montgomery_O0.txt || true
endif
	@echo

	@echo "Running bench_barret_reist (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_barret_reist_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_barret_reist_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_barret_reist_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_barret_reist_O0.txt || true
endif
	@echo

ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O0)..."
ifeq ($(IS_WINDOWS),1)
	@$(BUILD_DIR)\bench_reist_arm_noopt > $(RESULT_DIR)\$(TIMESTAMP)_bench_reist_arm_O0.txt 2>nul || echo.
else
	@$(BUILD_DIR)/bench_reist_arm_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_reist_arm_O0.txt || true
endif
	@echo
endif

ifeq ($(IS_WINDOWS),1)
	@if exist results_modadd_suite.csv $(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv
	@if exist results_poly_mod.csv $(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv
	@echo Generating plots...
	@set RESULT_TIMESTAMP=$(TIMESTAMP) && $(PYTHON) scripts\plot_benchmarks.py || echo WARNING: plotting script failed
else
	@if [ -f results_modadd_suite.csv ]; then \
		$(MOVE) results_modadd_suite.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_modadd_suite.csv"; \
	else \
		echo "WARNING: results_modadd_suite.csv not found"; \
	fi
	@if [ -f results_poly_mod.csv ]; then \
		$(MOVE) results_poly_mod.csv $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv; \
		echo "Stored $(RESULT_DIR)$(SLASH)$(TIMESTAMP)_results_poly_mod.csv"; \
	else \
		echo "WARNING: results_poly_mod.csv not found"; \
	fi
	@echo "Generating plots..."
	@RESULT_TIMESTAMP=$(TIMESTAMP) $(PYTHON) scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"
endif
