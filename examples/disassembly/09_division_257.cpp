#include "../../include/reist_mod.hpp"
#include "examples.hpp"

extern "C" void signed_division_constant(std::int64_t value, std::int64_t *quotient,
                                         std::int64_t *remainder) {
    *quotient = value / 257;
    *remainder = value % 257;
}

extern "C" void euclidean_division_constant(std::int64_t value, std::int64_t *quotient,
                                            std::int64_t *remainder) {
    std::int64_t q = value / 257;
    std::int64_t r = value % 257;
    if (r < 0) {
        r += 257;
        --q;
    }
    *quotient = q;
    *remainder = r;
}

extern "C" void reist_division_constant(std::int64_t value, std::int64_t *quotient,
                                        std::int64_t *remainder) {
    const auto result = reist::divide(value, 257);
    *quotient = result.q;
    *remainder = result.r;
}
