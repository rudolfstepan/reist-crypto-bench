#include "../../src/paper_addition.hpp"
#include "examples.hpp"

extern "C" std::uint32_t runtime_percent(std::uint32_t a, std::uint32_t b,
                                         std::uint32_t modulus) noexcept {
    return reist::paper::add<reist::paper::method::percent, 0>(a, b, modulus);
}

extern "C" std::uint32_t runtime_bounded(std::uint32_t a, std::uint32_t b,
                                         std::uint32_t modulus) noexcept {
    return reist::paper::add<reist::paper::method::bounded, 0>(a, b, modulus);
}

extern "C" std::int32_t runtime_centered(std::int32_t a, std::int32_t b,
                                         std::uint32_t modulus) noexcept {
    return reist::paper::add<reist::paper::method::centered, 0>(a, b, modulus);
}
