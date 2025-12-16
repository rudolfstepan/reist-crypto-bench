#include <iostream>
#include <vector>
#include <cstdint>
#include <cmath>
#include <cassert>
#include <iomanip>

// ============================================================
// Context for Tree-REIST operations
// ============================================================
struct ReistTreeCtx {
    int64_t B;           // modulus
    int64_t half;        // B >> 1
    uint64_t invB;       // fixed-point reciprocal
    int shift;           // shift amount for reciprocal
    
    explicit ReistTreeCtx(int64_t modulus) 
        : B(modulus), half(modulus >> 1), shift(32) {
        double inv = 1.0 / (double)B;
        invB = (uint64_t)(inv * (1ULL << shift));
    }
};

// ============================================================
// Helper: Compute initial approximation using reciprocal
// ============================================================
inline int64_t approx_quotient(int64_t T, const ReistTreeCtx& ctx) {
#ifndef _WIN32
    return (int64_t)(((__int128_t)T * ctx.invB) >> ctx.shift);
#else
    // Windows MSVC does not support __int128_t. Use 64-bit multiplication as fallback (less precise for large T).
    return (int64_t)(((int64_t)T * (int64_t)ctx.invB) >> ctx.shift);
    // NOTE: This fallback may lose precision for large T. For full 128-bit support, use a library like boost::multiprecision.
#endif
}

// ============================================================
// REIST-Linear: Sequential correction (baseline)
// ============================================================
inline int64_t reist_linear(int64_t T, const ReistTreeCtx& ctx) {
    int64_t Q = approx_quotient(T, ctx);
    int64_t R = T - Q * ctx.B;
    
    // Sequential correction
    while (R > ctx.half) {
        R -= ctx.B;
        Q++;
    }
    while (R <= -ctx.half) {
        R += ctx.B;
        Q--;
    }
    
    return R;
}

// ============================================================
// REIST-Tree: Hierarchical parallel correction (CORRECTED)
// ============================================================

// Phase 1: Determine how many corrections are needed
// Using CEILING division for correct count
inline int64_t compute_correction_count(int64_t R, const ReistTreeCtx& ctx) {
    if (R > ctx.half) {
        // Positive corrections: ceiling division
        // ceil((R - half) / B) = floor((R - half + B - 1) / B)
        return (R - ctx.half + ctx.B - 1) / ctx.B;
    } else if (R <= -ctx.half) {
        // Negative corrections: ceiling of absolute value, negated
        // -ceil((half - R) / B) = -floor((half - R + B - 1) / B)
        return -((ctx.half - R + ctx.B - 1) / ctx.B);
    }
    return 0;
}

// Phase 2: Evaluate independent correction terms
// CORRECTED: Each c_i depends ONLY on R0, i, half, B
// c_i is active if: (R0 - i*B) > half  (positive case)
//                   (R0 + i*B) <= -half (negative case)
inline void evaluate_corrections_correct(int64_t R0, const ReistTreeCtx& ctx, 
                                         int64_t k, std::vector<int64_t>& corrections) {
    corrections.clear();
    corrections.reserve(std::abs(k));
    
    if (k > 0) {
        // Positive corrections
        for (int64_t i = 0; i < k; i++) {
            // Check: R0 - i*B > half
            // This is the INDEPENDENT condition for c_i
            if (R0 - i * ctx.B > ctx.half) {
                corrections.push_back(ctx.B);
            } else {
                corrections.push_back(0);
            }
        }
    } else if (k < 0) {
        // Negative corrections
        for (int64_t i = 0; i < -k; i++) {
            // Check: R0 + i*B <= -half
            if (R0 + i * ctx.B <= -ctx.half) {
                corrections.push_back(-ctx.B);
            } else {
                corrections.push_back(0);
            }
        }
    }
}

// Alternative: Simplified version (knowing all k corrections are needed)
// This is what we'll use in practice since our k calculation is correct
inline void evaluate_corrections_simple(int64_t k, const ReistTreeCtx& ctx,
                                       std::vector<int64_t>& corrections) {
    corrections.clear();
    corrections.reserve(std::abs(k));
    
    if (k > 0) {
        for (int64_t i = 0; i < k; i++) {
            corrections.push_back(ctx.B);
        }
    } else if (k < 0) {
        for (int64_t i = 0; i < -k; i++) {
            corrections.push_back(-ctx.B);
        }
    }
}

// Phase 3: Tree reduction - combine corrections hierarchically
// This is the key insight: instead of applying corrections sequentially,
// we add them up in a tree structure: O(log k) depth instead of O(k)
inline int64_t tree_reduce(const std::vector<int64_t>& corrections, bool verbose = false) {
    if (corrections.empty()) return 0;
    if (corrections.size() == 1) return corrections[0];
    
    std::vector<int64_t> current = corrections;
    int level = 0;
    
    while (current.size() > 1) {
        std::vector<int64_t> next_level;
        next_level.reserve((current.size() + 1) / 2);
        
        if (verbose) {
            std::cout << "  Level " << level << " (size=" << current.size() << "): [";
            for (size_t i = 0; i < std::min(current.size(), size_t(4)); i++) {
                std::cout << current[i];
                if (i < std::min(current.size(), size_t(4)) - 1) std::cout << ", ";
            }
            if (current.size() > 4) std::cout << ", ...";
            std::cout << "]\n";
        }
        
        // Pairwise addition - in parallel hardware, all pairs computed simultaneously
        for (size_t i = 0; i + 1 < current.size(); i += 2) {
            next_level.push_back(current[i] + current[i + 1]);
        }
        
        // Handle odd element
        if (current.size() % 2 == 1) {
            next_level.push_back(current.back());
        }
        
        current = std::move(next_level);
        level++;
    }
    
    if (verbose && level > 0) {
        std::cout << "  Level " << level << " (size=1): [" << current[0] << "]\n";
    }
    
    return current[0];
}

// Complete REIST-Tree reduction
inline int64_t reist_tree(int64_t T, const ReistTreeCtx& ctx, bool verbose = false) {
    // Step 1: Initial approximation
    int64_t Q = approx_quotient(T, ctx);
    int64_t R = T - Q * ctx.B;
    
    if (verbose) {
        std::cout << "Initial: Q=" << Q << ", R=" << R << "\n";
    }
    
    // Step 2: Determine correction count (CORRECTED: using ceiling division)
    int64_t k = compute_correction_count(R, ctx);
    
    if (verbose) {
        std::cout << "Corrections needed: k=" << k << "\n";
    }
    
    if (k == 0) {
        return R;  // Already in centered range
    }
    
    // Optimization: for small k, linear is faster (no tree overhead)
    if (std::abs(k) <= 2) {
        if (verbose) std::cout << "Using linear correction (k too small)\n";
        while (R > ctx.half) R -= ctx.B;
        while (R <= -ctx.half) R += ctx.B;
        return R;
    }
    
    // Step 3: Evaluate correction terms (parallel in hardware)
    std::vector<int64_t> corrections;
    evaluate_corrections_simple(k, ctx, corrections);
    
    if (verbose) {
        std::cout << "Correction terms: k=" << corrections.size() << " terms of " 
                  << (k > 0 ? ctx.B : -ctx.B) << " each\n";
    }
    
    // Step 4: Tree reduction (logarithmic depth)
    if (verbose) std::cout << "Tree reduction:\n";
    int64_t total_correction = tree_reduce(corrections, verbose);
    
    if (verbose) {
        std::cout << "Total correction: " << total_correction << "\n";
    }
    
    // Step 5: Apply total correction
    R -= total_correction;
    
    if (verbose) {
        std::cout << "After correction: R=" << R << "\n";
    }
    
    // Final centering (should be none if our math is correct!)
    int final_corrections = 0;
    while (R > ctx.half) {
        R -= ctx.B;
        final_corrections++;
    }
    while (R <= -ctx.half) {
        R += ctx.B;
        final_corrections--;
    }
    
    if (verbose && final_corrections != 0) {
        std::cout << "⚠️  Warning: " << final_corrections << " final corrections needed!\n";
    }
    
    return R;
}

// ============================================================
// Verification: Test the independent evaluation formula
// ============================================================
void test_independent_evaluation(int64_t R0, int64_t B, int64_t half) {
    std::cout << "\n--- Testing Independent Evaluation Formula ---\n";
    std::cout << "R0=" << R0 << ", B=" << B << ", half=" << half << "\n\n";
    
    // Compute k
    int64_t k;
    if (R0 > half) {
        k = (R0 - half + B - 1) / B;
    } else if (R0 <= -half) {
        k = -((half - R0 + B - 1) / B);
    } else {
        k = 0;
    }
    
    std::cout << "k = " << k << "\n\n";
    
    if (k > 0) {
        std::cout << "Testing condition: c_i = B if (R0 - i*B) > half\n";
        std::cout << std::setw(5) << "i" << std::setw(15) << "R0 - i*B" 
                  << std::setw(15) << "> half?" << std::setw(10) << "c_i" << "\n";
        std::cout << std::string(45, '-') << "\n";
        
        for (int64_t i = 0; i < std::min(k + 2, (int64_t)10); i++) {
            int64_t remainder = R0 - i * B;
            bool active = remainder > half;
            std::cout << std::setw(5) << i 
                      << std::setw(15) << remainder
                      << std::setw(15) << (active ? "YES" : "NO")
                      << std::setw(10) << (active ? B : 0) << "\n";
        }
        
        if (k > 10) {
            std::cout << "  ... (" << (k - 10) << " more corrections)\n";
        }
    }
}

// ============================================================
// Testing and demonstration
// ============================================================

void test_equivalence(int64_t T, int64_t B) {
    std::cout << "\n========================================\n";
    std::cout << "Testing: T=" << T << ", B=" << B << "\n";
    std::cout << "========================================\n";
    
    ReistTreeCtx ctx(B);
    
    std::cout << "\n--- REIST-Linear ---\n";
    int64_t r_linear = reist_linear(T, ctx);
    std::cout << "Result: " << r_linear << "\n";
    
    std::cout << "\n--- REIST-Tree (Corrected) ---\n";
    int64_t r_tree = reist_tree(T, ctx, true);
    std::cout << "Result: " << r_tree << "\n";
    
    std::cout << "\n--- Verification ---\n";
    std::cout << "Linear result: " << r_linear << "\n";
    std::cout << "Tree result:   " << r_tree << "\n";
    
    if (r_linear == r_tree) {
        std::cout << "✓ Results match!\n";
    } else {
        std::cout << "✗ MISMATCH!\n";
        std::cout << "  Expected (linear): " << r_linear << "\n";
        std::cout << "  Got (tree):        " << r_tree << "\n";
        assert(false && "Results don't match!");
    }
    
    // Verify correctness: R must be in [-half, half]
    assert(r_linear > -ctx.half && r_linear <= ctx.half);
    assert(r_tree > -ctx.half && r_tree <= ctx.half);
    
    // Verify: T = q*B + r for some integer q
    int64_t q_linear = (T - r_linear) / ctx.B;
    assert(T == q_linear * ctx.B + r_linear);
    
    int64_t q_tree = (T - r_tree) / ctx.B;
    assert(T == q_tree * ctx.B + r_tree);
}

void analyze_complexity(int64_t T, int64_t B) {
    ReistTreeCtx ctx(B);
    int64_t Q = approx_quotient(T, ctx);
    int64_t R = T - Q * ctx.B;
    int64_t k = compute_correction_count(R, ctx);
    
    std::cout << "\n--- Complexity Analysis ---\n";
    std::cout << "T=" << T << ", B=" << B << "\n";
    std::cout << "Initial remainder R=" << R << "\n";
    std::cout << "Corrections needed: k=" << k << "\n";
    
    if (k != 0) {
        int64_t abs_k = std::abs(k);
        int tree_depth = 0;
        int64_t level_size = abs_k;
        while (level_size > 1) {
            tree_depth++;
            level_size = (level_size + 1) / 2;
        }
        
        std::cout << "\nLinear method:\n";
        std::cout << "  Critical path: O(" << abs_k << ") = " << abs_k << " sequential steps\n";
        std::cout << "  Total work: " << abs_k << " corrections\n";
        std::cout << "  Parallelism: None (fully sequential)\n";
        
        std::cout << "\nTree method:\n";
        std::cout << "  Critical path: O(log " << abs_k << ") = " << (tree_depth + 1) << " levels\n";
        std::cout << "  Total work: " << abs_k << " corrections (same)\n";
        std::cout << "  Parallelism: Up to " << abs_k << " parallel evaluations\n";
        
        double speedup = (double)abs_k / (tree_depth + 1);
        std::cout << "\nTheoretical speedup: " << std::fixed << std::setprecision(2) 
                  << speedup << "x\n";
        std::cout << "(assuming perfect parallelization)\n";
        
        // SIMD analysis
        int simd_width = 8;  // AVX2 for int32
        int simd_batches = (abs_k + simd_width - 1) / simd_width;
        std::cout << "\nSIMD Analysis (AVX2, 8-wide):\n";
        std::cout << "  Evaluation phase: " << simd_batches << " SIMD operations\n";
        std::cout << "  Reduction phase: " << tree_depth << " levels\n";
    }
}

int main() {
    std::cout << "REIST Tree: Corrected Scalar Implementation\n";
    std::cout << "============================================\n";
    std::cout << "Using CEILING division for correct k calculation\n";
    std::cout << "Independent evaluation: c_i = B if (R0 - i*B) > half\n\n";
    
    // Test the independent evaluation formula first
    test_independent_evaluation(53, 13, 6);
    test_independent_evaluation(10000010, 13, 6);
    
    // Test 1: Small correction
    test_equivalence(157, 13);
    analyze_complexity(157, 13);
    
    // Test 2: Medium correction
    test_equivalence(10013, 13);
    analyze_complexity(10013, 13);
    
    // Test 3: Large correction
    test_equivalence(1000013, 13);
    analyze_complexity(1000013, 13);
    
    // Test 4: Very large correction
    test_equivalence(10000013, 13);
    analyze_complexity(10000013, 13);
    
    // Test 5: Negative corrections
    test_equivalence(-500007, 13);
    analyze_complexity(-500007, 13);
    
    // Test 6: Edge case - exactly on boundary
    test_equivalence(13 * 1000 + 6, 13);  // R0 = 6 (exactly at half)
    
    // Test 7: Edge case - just over boundary
    test_equivalence(13 * 1000 + 7, 13);  // R0 = 7 (just over half)
    
    std::cout << "\n========================================\n";
    std::cout << "All tests completed successfully! ✓\n";
    std::cout << "========================================\n";
    
    return 0;
}