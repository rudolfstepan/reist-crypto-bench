#include "../../include/reist_mod.hpp"
#include "examples.hpp"

// General remainders: unlike bounded addition, input can be any int64_t.
// A positive modulus excludes the undefined INT64_MIN / -1 case.
extern "C" std::int64_t signed_remainder_constant(std::int64_t value) {
    constexpr std::int64_t modulus = 257;
    return value % modulus;
}

extern "C" std::int64_t euclidean_remainder_constant(std::int64_t value) {
    constexpr std::int64_t modulus = 257;
    return reist::euclidean_remainder(value, modulus);
}

extern "C" std::int64_t reist_remainder_constant(std::int64_t value) {
    constexpr std::int64_t modulus = 257;
    return reist::center_remainder(value, modulus);
}
