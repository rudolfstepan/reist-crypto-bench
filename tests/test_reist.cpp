#include <iostream>
#include <cassert>
#include "reist_mod.hpp"

int main() {
    using namespace reist;

    // Basic invariants for a range of moduli and values
    for (int B = 2; B <= 100; ++B) {
        for (int T = 0; T < 10 * B; ++T) {
            int64_t r_classic = classic_remainder(T, B);
            int64_t r_reist   = signed_remainder(T, B);

            assert(r_classic >= 0 && r_classic < B);

            int64_t halfB = B / 2;
            // REIST range is (-B/2, +B/2]
            assert(r_reist > -halfB && r_reist <= halfB);

            // Check that the relation T = q*B + r holds modulo arithmetic sense:
            // classic remainder and REIST remainder differ um ein Vielfaches von B
            int64_t diff = r_classic - r_reist;
            assert(diff % B == 0);
        }
    }

    std::cout << "All REIST tests passed.\n";
    return 0;
}
