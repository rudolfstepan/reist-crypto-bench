#include "../../src/paper_addition.hpp"
#include "examples.hpp"

extern "C" std::uint32_t power2_percent(std::uint32_t a, std::uint32_t b) noexcept {
    return reist::paper::add<reist::paper::method::percent, 256>(a, b, 256);
}

extern "C" std::uint32_t power2_bounded(std::uint32_t a, std::uint32_t b) noexcept {
    return reist::paper::add<reist::paper::method::bounded, 256>(a, b, 256);
}

extern "C" std::int32_t power2_centered(std::int32_t a, std::int32_t b) noexcept {
    return reist::paper::add<reist::paper::method::centered, 256>(a, b, 256);
}
