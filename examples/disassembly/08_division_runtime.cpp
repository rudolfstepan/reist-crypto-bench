#include "../../include/reist_mod.hpp"
#include "examples.hpp"

extern "C" void signed_division_runtime(std::int64_t value, std::int64_t modulus,
                                        std::int64_t *quotient,
                                        std::int64_t *remainder) {
    reist::detail::require_positive_modulus(modulus);
    *quotient = value / modulus;
    *remainder = value % modulus;
}

extern "C" void euclidean_division_runtime(std::int64_t value, std::int64_t modulus,
                                           std::int64_t *quotient,
                                           std::int64_t *remainder) {
    reist::detail::require_positive_modulus(modulus);
    std::int64_t q = value / modulus;
    std::int64_t r = value % modulus;
    if (r < 0) {
        r += modulus;
        --q;
    }
    *quotient = q;
    *remainder = r;
}

extern "C" void reist_division_runtime(std::int64_t value, std::int64_t modulus,
                                       std::int64_t *quotient,
                                       std::int64_t *remainder) {
    const auto result = reist::divide(value, modulus);
    *quotient = result.q;
    *remainder = result.r;
}
