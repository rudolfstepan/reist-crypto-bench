#include <array>
#include <bit>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <exception>
#include <iomanip>
#include <iostream>
#include <limits>

namespace {

using Clock = std::chrono::steady_clock;
using State = std::array<std::uint32_t, 16>;

volatile std::uint64_t benchmark_sink = 0;

constexpr std::uint32_t standard_add(std::uint32_t a, std::uint32_t b) {
    return a + b;
}

constexpr std::uint32_t identity_add(std::uint32_t a, std::uint32_t b) {
    // ChaCha uses arithmetic modulo 2^32. REIST's centered invariant does not
    // replace this ARX operation; this deliberately identical function is a
    // neutral control for that scope boundary.
    return a + b;
}

template <auto Add>
inline void quarter_round(State& state, std::size_t a, std::size_t b,
                          std::size_t c, std::size_t d) {
    state[a] = Add(state[a], state[b]);
    state[d] = std::rotl(state[d] ^ state[a], 16);
    state[c] = Add(state[c], state[d]);
    state[b] = std::rotl(state[b] ^ state[c], 12);
    state[a] = Add(state[a], state[b]);
    state[d] = std::rotl(state[d] ^ state[a], 8);
    state[c] = Add(state[c], state[d]);
    state[b] = std::rotl(state[b] ^ state[c], 7);
}

template <auto Add>
State chacha20_block(const State& input) {
    State state = input;
    for (int round = 0; round < 10; ++round) {
        quarter_round<Add>(state, 0, 4, 8, 12);
        quarter_round<Add>(state, 1, 5, 9, 13);
        quarter_round<Add>(state, 2, 6, 10, 14);
        quarter_round<Add>(state, 3, 7, 11, 15);
        quarter_round<Add>(state, 0, 5, 10, 15);
        quarter_round<Add>(state, 1, 6, 11, 12);
        quarter_round<Add>(state, 2, 7, 8, 13);
        quarter_round<Add>(state, 3, 4, 9, 14);
    }
    for (std::size_t i = 0; i < state.size(); ++i) {
        state[i] = Add(state[i], input[i]);
    }
    return state;
}

State make_input(std::uint32_t seed, std::uint32_t counter) {
    State input{
        0x61707865U, 0x3320646eU, 0x79622d32U, 0x6b206574U,
        0, 0, 0, 0, 0, 0, 0, 0,
        counter, seed ^ 0x9e3779b9U, seed * 0x85ebca6bU,
        seed * 0xc2b2ae35U,
    };
    for (std::size_t i = 4; i < 12; ++i) {
        input[i] = seed + static_cast<std::uint32_t>(i) * 0x9e3779b9U;
    }
    return input;
}

template <auto Add>
std::uint64_t run_stream(std::uint32_t seed, std::uint32_t blocks) {
    std::uint64_t checksum = 0xcbf29ce484222325ULL;
    for (std::uint32_t counter = 0; counter < blocks; ++counter) {
        const auto output = chacha20_block<Add>(make_input(seed, counter));
        for (const auto word : output) {
            checksum ^= word;
            checksum *= 0x100000001b3ULL;
        }
    }
    return checksum;
}

template <class Function>
double time_call(Function&& function) {
    const auto begin = Clock::now();
    function();
    const auto end = Clock::now();
    return std::chrono::duration<double>(end - begin).count();
}

bool preflight(std::uint32_t seed) {
    // RFC 8439, section 2.3.2, expressed as little-endian 32-bit words.
    constexpr State rfc_input{
        0x61707865U, 0x3320646eU, 0x79622d32U, 0x6b206574U,
        0x03020100U, 0x07060504U, 0x0b0a0908U, 0x0f0e0d0cU,
        0x13121110U, 0x17161514U, 0x1b1a1918U, 0x1f1e1d1cU,
        0x00000001U, 0x09000000U, 0x4a000000U, 0x00000000U,
    };
    constexpr State rfc_expected{
        0xe4e7f110U, 0x15593bd1U, 0x1fdd0f50U, 0xc47120a3U,
        0xc7f4d1c7U, 0x0368c033U, 0x9aaa2204U, 0x4e6cd4c3U,
        0x466482d2U, 0x09aa9f07U, 0x05d7c214U, 0xa2028bd9U,
        0xd19c12b5U, 0xb94e16deU, 0xe883d0cbU, 0x4e3c50a2U,
    };
    if (chacha20_block<standard_add>(rfc_input) != rfc_expected) {
        std::cerr << "RFC 8439 ChaCha20 block preflight failed\n";
        return false;
    }

    for (std::uint32_t counter = 0; counter < 128; ++counter) {
        const auto standard =
            chacha20_block<standard_add>(make_input(seed, counter));
        const auto identity =
            chacha20_block<identity_add>(make_input(seed, counter));
        if (standard != identity) {
            std::cerr << "ARX identity preflight failed at counter "
                      << counter << '\n';
            return false;
        }
    }
    return true;
}

}  // namespace

int main(int argc, char** argv) {
    try {
        std::uint64_t requested_blocks = 1'000'000;
        std::uint32_t seed = 0xCAFEBABE;
        if (argc >= 2) {
            requested_blocks = std::stoull(argv[1]);
        }
        if (argc >= 3) {
            const auto parsed = std::stoull(argv[2], nullptr, 0);
            if (parsed > std::numeric_limits<std::uint32_t>::max()) {
                throw std::out_of_range("seed must fit uint32_t");
            }
            seed = static_cast<std::uint32_t>(parsed);
        }
        if (argc > 3 || requested_blocks == 0 ||
            requested_blocks > std::numeric_limits<std::uint32_t>::max()) {
            std::cerr << "Usage: " << argv[0]
                      << " [blocks=1..2^32-1] [seed_uint32]\n";
            return 2;
        }
        const auto blocks = static_cast<std::uint32_t>(requested_blocks);

        if (!preflight(seed)) {
            return 3;
        }

        std::uint64_t standard_sink = 0;
        std::uint64_t identity_sink = 0;
        const double standard_time = time_call([&] {
            standard_sink = run_stream<standard_add>(seed, blocks);
            benchmark_sink = standard_sink;
        });
        const double identity_time = time_call([&] {
            identity_sink = run_stream<identity_add>(seed, blocks);
            benchmark_sink = identity_sink;
        });

        if (standard_sink != identity_sink) {
            std::cerr << "ARX identity checksum mismatch\n";
            return 3;
        }

        const double bytes = static_cast<double>(blocks) * 64.0;
        std::cout << std::fixed << std::setprecision(6);
        std::cout << "========================================\n"
                  << "ChaCha20 ARX identity control\n"
                  << "========================================\n"
                  << "This is a scope/neutrality control, not a REIST speedup.\n"
                  << "Each block uses a distinct counter and contributes to an\n"
                  << "observable checksum.\n\n"
                  << "Blocks       : " << blocks << '\n'
                  << "std add      : " << standard_time << " s ("
                  << (bytes / standard_time / 1e6) << " MB/s)\n"
                  << "identity add : " << identity_time << " s ("
                  << (bytes / identity_time / 1e6) << " MB/s)\n";
        if (identity_time > 0.0) {
            std::cout << "ratio        : "
                      << (standard_time / identity_time)
                      << "x (std / identity)\n";
        }
        std::cout << "checksum     : 0x" << std::hex << standard_sink
                  << std::dec << '\n';
        return 0;
    } catch (const std::exception& error) {
        std::cerr << "Invalid argument or benchmark failure: "
                  << error.what() << '\n';
        return 2;
    }
}
