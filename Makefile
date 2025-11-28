# ================================
# High Performance Makefile
# Compiles all src/*.cpp with:
# -O3 -Ofast -march=native -mtune=native
# LTO, loop unrolling, no frame pointer
# ================================

CXX      := g++
CXXFLAGS := -O3 -Ofast -march=native -mtune=native \
            -funroll-loops -flto -fomit-frame-pointer \
            -std=c++20 -Iinclude

SRC_DIR   := src
BUILD_DIR := build

# find all .cpp files
SOURCES := $(wildcard $(SRC_DIR)/*.cpp)
# derive output binaries
BINS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%,$(SOURCES))

all: $(BUILD_DIR) $(BINS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# compile each source into build/<binary>
$(BUILD_DIR)/%: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR)

list:
	@echo "Sources: $(SOURCES)"
	@echo "Binaries: $(BINS)"

# ======================================
# Run all benchmarks automatically
# ======================================
run: all
	@echo "Running bench_modadd_suite..."
	@$(BUILD_DIR)/bench_modadd_suite || true
	@echo

	@echo "Running bench_poly_mod..."
	@$(BUILD_DIR)/bench_poly_mod || true
	@echo

	@echo "Running bench_modular..."
	@$(BUILD_DIR)/bench_modular || true
	@echo

	@echo "Running bench_chacha_reist..."
	@$(BUILD_DIR)/bench_chacha_reist || true
	@echo

	@echo "Running bench_chacha_stream..."
	@$(BUILD_DIR)/bench_chacha_stream || true
	@echo

	@echo "Running bench_hashmix..."
	@$(BUILD_DIR)/bench_hashmix || true
	@echo

