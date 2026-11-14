#include "../../src/paper_addition.hpp"
#include "examples.hpp"

extern "C" std::uint32_t serial_percent(std::uint32_t state, const std::uint32_t *steps,
                                        std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state =
            reist::paper::add<reist::paper::method::percent, 257>(state, steps[i], 257);
    }
    return state;
}

extern "C" std::uint32_t serial_bounded(std::uint32_t state, const std::uint32_t *steps,
                                        std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state =
            reist::paper::add<reist::paper::method::bounded, 257>(state, steps[i], 257);
    }
    return state;
}

extern "C" std::int32_t serial_centered(std::int32_t state, const std::int32_t *steps,
                                        std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state = reist::paper::add<reist::paper::method::centered, 257>(state, steps[i],
                                                                       257);
    }
    return state;
}
