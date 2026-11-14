#include "../../include/reist_mod.hpp"
#include "examples.hpp"

// General remainders: unlike bounded addition, input can be any int64_t.
// A positive modulus excludes the undefined INT64_MIN / -1 case.
extern "C" std::int64_t signed_remainder_runtime(std::int64_t value,
                                                 std::int64_t modulus) {
    // Use the same validation gate as the public REIST API for a fair comparison.
    reist::detail::require_positive_modulus(modulus);
    return value % modulus;
}

extern "C" std::int64_t euclidean_remainder_runtime(std::int64_t value,
                                                    std::int64_t modulus) {
    return reist::euclidean_remainder(value, modulus);
}

extern "C" std::int64_t reist_remainder_runtime(std::int64_t value,
                                                std::int64_t modulus) {
    return reist::center_remainder(value, modulus);
}
