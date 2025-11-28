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
    # ============================
    # ARM64 / AArch64 Optimierung
    # ============================
    CXXFLAGS := -O3 -Ofast \
                -march=armv8-a+simd \
                -mtune=generic \
                -funroll-loops -flto \
                -ffast-math -fomit-frame-pointer \
                -std=c++20 -Iinclude

    # Hinweis:
    # -march=armv8-a+simd aktiviert NEON/AdvSIMD
    # clang auf ARM ist meist 10–25 % schneller als g++

else
    # ============================
    # x86_64 Optimierung
    # ============================
    CXXFLAGS := -O3 -Ofast \
                -march=native -mtune=native \
                -funroll-loops -flto \
                -fomit-frame-pointer \
                -std=c++20 -Iinclude
endif

# --------------------------------
# Paths
# --------------------------------
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
	@echo "Architecture: $(ARCH)"
	@echo "Compiler: $(CXX)"
	@echo "Flags: $(CXXFLAGS)"
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

	@echo "Running bench_reist_arm..."
	@$(BUILD_DIR)/bench_reist_arm || true
	@echo
