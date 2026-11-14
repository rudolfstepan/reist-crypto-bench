#include "examples.hpp"

#include <charconv>
#include <cstdio>
#include <cstring>
#include <initializer_list>
#include <system_error>

struct division_pair {
    std::int64_t quotient;
    std::int64_t remainder;
};

struct comparison {
    std::int64_t value;
    std::int64_t modulus;
    division_pair cpp;
    division_pair euclidean;
    division_pair reist;
    std::int64_t cpp_remainder;
    std::int64_t euclidean_remainder;
    std::int64_t reist_remainder;
};

volatile std::int64_t debug_last_remainder = 0;

// A stable breakpoint after all calls, even when the arithmetic uses -O2/-Os.
// The driver is compiled separately at -O0, without LTO.
extern "C" void debug_checkpoint(const comparison *result) {
    debug_last_remainder = result->reist.remainder; // BREAKPOINT: inspect *result.
}

bool parse_integer(const char *text, std::int64_t &value) {
    const char *end = text + std::strlen(text);
    const auto parsed = std::from_chars(text, end, value);
    return parsed.ec == std::errc{} && parsed.ptr == end;
}

int main(int argc, char **argv) {
    comparison runtime{-260, 257, {}, {}, {}, 0, 0, 0};
    if (argc > 3 || (argc > 1 && !parse_integer(argv[1], runtime.value)) ||
        (argc > 2 && !parse_integer(argv[2], runtime.modulus)) ||
        runtime.modulus <= 0) {
        std::fputs(
            "Usage: reist_debug [signed-int64 dividend] [positive-int64 modulus]\n",
            stderr);
        return 2;
    }

    // BREAKPOINT: F11 steps into each separately compiled comparison function.
    signed_division_runtime(runtime.value, runtime.modulus, &runtime.cpp.quotient,
                            &runtime.cpp.remainder);
    euclidean_division_runtime(runtime.value, runtime.modulus,
                               &runtime.euclidean.quotient,
                               &runtime.euclidean.remainder);
    reist_division_runtime(runtime.value, runtime.modulus, &runtime.reist.quotient,
                           &runtime.reist.remainder);
    runtime.cpp_remainder = signed_remainder_runtime(runtime.value, runtime.modulus);
    runtime.euclidean_remainder =
        euclidean_remainder_runtime(runtime.value, runtime.modulus);
    runtime.reist_remainder = reist_remainder_runtime(runtime.value, runtime.modulus);
    debug_checkpoint(&runtime);

    comparison constant{runtime.value, 257, {}, {}, {}, 0, 0, 0};
    signed_division_constant(constant.value, &constant.cpp.quotient,
                             &constant.cpp.remainder);
    euclidean_division_constant(constant.value, &constant.euclidean.quotient,
                                &constant.euclidean.remainder);
    reist_division_constant(constant.value, &constant.reist.quotient,
                            &constant.reist.remainder);
    constant.cpp_remainder = signed_remainder_constant(constant.value);
    constant.euclidean_remainder = euclidean_remainder_constant(constant.value);
    constant.reist_remainder = reist_remainder_constant(constant.value);
    debug_checkpoint(&constant);

    for (const comparison *result : {&runtime, &constant}) {
        std::printf(
            "T=%lld B=%lld C++=(%lld,%lld) Euclidean=(%lld,%lld) REIST=(%lld,%lld)\n",
            static_cast<long long>(result->value),
            static_cast<long long>(result->modulus),
            static_cast<long long>(result->cpp.quotient),
            static_cast<long long>(result->cpp.remainder),
            static_cast<long long>(result->euclidean.quotient),
            static_cast<long long>(result->euclidean.remainder),
            static_cast<long long>(result->reist.quotient),
            static_cast<long long>(result->reist.remainder));
    }
    return 0;
}
