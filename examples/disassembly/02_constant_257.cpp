#include "../../src/paper_addition.hpp"
#include "examples.hpp"

extern "C" std::uint32_t constant_percent(std::uint32_t a, std::uint32_t b) noexcept {
    return reist::paper::add<reist::paper::method::percent, 257>(a, b, 257);
}

extern "C" std::uint32_t constant_bounded(std::uint32_t a, std::uint32_t b) noexcept {
    return reist::paper::add<reist::paper::method::bounded, 257>(a, b, 257);
}

extern "C" std::int32_t constant_centered(std::int32_t a, std::int32_t b) noexcept {
    return reist::paper::add<reist::paper::method::centered, 257>(a, b, 257);
}
