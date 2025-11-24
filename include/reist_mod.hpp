#pragma once
#include <cstdint>

namespace reist {

/// Signed symmetric remainder in interval (-B/2, +B/2], based on REIST division idea.
/// For T >= 0, B > 1.
inline int64_t signed_remainder(int64_t T, int64_t B) {
    int64_t q = T / B;
    int64_t r = T % B;
    int64_t halfB = B / 2; // integer division

    if (r > halfB) {
        r -= B;
        ++q;
    }
    return r;
}

/// Classic remainder helper: 0 <= r < B (for T >= 0, B > 0)
inline int64_t classic_remainder(int64_t T, int64_t B) {
    return T % B;
}

/// Simple REIST-style modular add using int64 domain.
/// Computes (a + b) with symmetric remainder for modulus B.
inline int64_t reist_add_mod(int64_t a, int64_t b, int64_t B) {
    int64_t T = a + b;
    return signed_remainder(T, B);
}

} // namespace reist
