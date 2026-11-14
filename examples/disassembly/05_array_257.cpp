#include "../../src/paper_addition.hpp"
#include "examples.hpp"

extern "C" void array_percent(std::uint32_t *state, const std::uint32_t *steps,
                              std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state[i] = reist::paper::add<reist::paper::method::percent, 257>(state[i],
                                                                         steps[i], 257);
    }
}

extern "C" void array_bounded(std::uint32_t *state, const std::uint32_t *steps,
                              std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state[i] = reist::paper::add<reist::paper::method::bounded, 257>(state[i],
                                                                         steps[i], 257);
    }
}

extern "C" void array_centered(std::int32_t *state, const std::int32_t *steps,
                               std::size_t count) noexcept {
    for (std::size_t i = 0; i < count; ++i) {
        state[i] = reist::paper::add<reist::paper::method::centered, 257>(
            state[i], steps[i], 257);
    }
}
