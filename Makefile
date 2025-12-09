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


# Timestamp for results
TIMESTAMP := $(shell date +%Y%m%d_%H%M%S)
RESULT_DIR := tests/results/$(if $(filter aarch64,$(ARCH)),arm,x86)

run_optimized: all
	@mkdir -p $(RESULT_DIR)
	@echo "Running bench_modadd_suite (O3)..."
	@$(BUILD_DIR)/bench_modadd_suite_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modadd_suite_O3.txt || true
	@echo

	@echo "Running bench_poly_mod (O3)..."
	@$(BUILD_DIR)/bench_poly_mod_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_poly_mod_O3.txt || true
	@echo

	@echo "Running bench_modular (O3)..."
	@$(BUILD_DIR)/bench_modular_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modular_O3.txt || true
	@echo

	@echo "Running bench_chacha_reist (O3)..."
	@$(BUILD_DIR)/bench_chacha_reist_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_reist_O3.txt || true
	@echo

	@echo "Running bench_chacha_stream (O3)..."
	@$(BUILD_DIR)/bench_chacha_stream_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_stream_O3.txt || true
	@echo

	@echo "Running bench_hashmix (O3)..."
	@$(BUILD_DIR)/bench_hashmix_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_hashmix_O3.txt || true
	@echo

ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O3)..."
	@$(BUILD_DIR)/bench_reist_arm_opt > $(RESULT_DIR)/$(TIMESTAMP)_bench_reist_arm_O3.txt || true
	@echo
endif

	@if [ -f results_modadd_suite.csv ]; then \
		mv results_modadd_suite.csv $(RESULT_DIR)/$(TIMESTAMP)_results_modadd_suite.csv; \
		echo "Stored $(RESULT_DIR)/$(TIMESTAMP)_results_modadd_suite.csv"; \
	else \
		echo "WARNING: results_modadd_suite.csv not found"; \
	fi
	@if [ -f results_poly_mod.csv ]; then \
		mv results_poly_mod.csv $(RESULT_DIR)/$(TIMESTAMP)_results_poly_mod.csv; \
		echo "Stored $(RESULT_DIR)/$(TIMESTAMP)_results_poly_mod.csv"; \
	else \
		echo "WARNING: results_poly_mod.csv not found"; \
	fi
	@echo "Generating plots..."
	@RESULT_TIMESTAMP=$(TIMESTAMP) python3 scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"

# Generate comprehensive benchmark documentation comparing O0 vs O3
report:
	@echo "=========================================="
	@echo "Generating Benchmark Documentation"
	@echo "=========================================="
	@python3 scripts/generate_benchmark_report.py
	@echo ""
	@echo "Documentation generated successfully!"
	@echo "Check tests/results/$(if $(filter aarch64,$(ARCH)),arm,x86)/ for the report"

.PHONY: all clean list run run_optimized report

# Run all no-opt benchmarks
run: all
	@mkdir -p $(RESULT_DIR)
	@echo "Running bench_modadd_suite (O0)..."
	@$(BUILD_DIR)/bench_modadd_suite_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modadd_suite_O0.txt || true
	@echo

	@echo "Running bench_poly_mod (O0)..."
	@$(BUILD_DIR)/bench_poly_mod_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_poly_mod_O0.txt || true
	@echo

	@echo "Running bench_modular (O0)..."
	@$(BUILD_DIR)/bench_modular_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_modular_O0.txt || true
	@echo

	@echo "Running bench_chacha_reist (O0)..."
	@$(BUILD_DIR)/bench_chacha_reist_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_reist_O0.txt || true
	@echo

	@echo "Running bench_chacha_stream (O0)..."
	@$(BUILD_DIR)/bench_chacha_stream_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_chacha_stream_O0.txt || true
	@echo

	@echo "Running bench_hashmix (O0)..."
	@$(BUILD_DIR)/bench_hashmix_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_hashmix_O0.txt || true
	@echo

ifeq ($(ARCH),aarch64)
	@echo "Running bench_reist_arm (O0)..."
	@$(BUILD_DIR)/bench_reist_arm_noopt > $(RESULT_DIR)/$(TIMESTAMP)_bench_reist_arm_O0.txt || true
	@echo
endif

	@if [ -f results_modadd_suite.csv ]; then \
		mv results_modadd_suite.csv $(RESULT_DIR)/$(TIMESTAMP)_results_modadd_suite.csv; \
		echo "Stored $(RESULT_DIR)/$(TIMESTAMP)_results_modadd_suite.csv"; \
	else \
		echo "WARNING: results_modadd_suite.csv not found"; \
	fi
	@if [ -f results_poly_mod.csv ]; then \
		mv results_poly_mod.csv $(RESULT_DIR)/$(TIMESTAMP)_results_poly_mod.csv; \
		echo "Stored $(RESULT_DIR)/$(TIMESTAMP)_results_poly_mod.csv"; \
	else \
		echo "WARNING: results_poly_mod.csv not found"; \
	fi
	@echo "Generating plots..."
	@RESULT_TIMESTAMP=$(TIMESTAMP) python3 scripts/plot_benchmarks.py || echo "WARNING: plotting script failed"
