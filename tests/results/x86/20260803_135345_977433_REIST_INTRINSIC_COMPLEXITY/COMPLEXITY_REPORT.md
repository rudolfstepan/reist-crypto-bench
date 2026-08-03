# REIST intrinsic empirical complexity report

This report characterizes the measured benchmark; it is **not a mathematical proof of a Big-O or Θ bound**. Compiler transformations, timer overhead, cache boundaries, memory bandwidth, frequency scaling, and the selected host can affect the fitted exponent.

- Started UTC: `2026-08-03T11:53:46+00:00`
- Finished UTC: `2026-08-03T11:58:21+00:00`
- Binary: `D:\Development\reist-crypto-bench\build\integration\const-mod-scaling\bench_reist_intrinsics.exe`
- Binary SHA-256: `06f94f22d648415a984129662cbe043ef56cd60a72db13f29c5d035532a5d4be`
- Host: `Windows-11-10.0.26200-SP0` / `AMD64`
- Python: `3.12.9`
- Sizes (13): `16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864`
- Moduli (4): `256, 12289, 1000003, 2147483647`
- Fixed repetitions for every size: `16`
- Trials: `12`; all six execution orders are equally represented
- Deterministic shuffled case-order seed: `6502`
- Slope bootstrap iterations: `2000` per fit
- Process affinity: `logical CPU 2`
- Validated cases: **52/52**
- Run metadata consistent across cases: **yes**
- Binary hash still matches at the post-run audit: **yes**

## Method

For each implementation and modulus, OLS fits `ln(T) = a + p ln(N)`. The slope `p` is an empirical exponent and R² describes only how well that log-log line fits these measured points. The all-point fit uses every requested size; the large-tail fit uses the last 5 sizes: `4194304, 8388608, 16777216, 33554432, 67108864`.
Cases were executed in a deterministic pseudo-random order to spread time-dependent host effects; the tables and consolidated CSV are sorted logically by modulus and N.

The 95% slope intervals are deterministic nonparametric percentile bootstraps: trial times are resampled with replacement independently at each N, their median is recomputed, and the slope is refitted. They describe this trial sample only and are not confidence bounds for a mathematical complexity class.

`T(2N)/T(N)` and `log2(T(2N)/T(N))` are reported only where both exact doubling sizes were requested. With fixed repetitions, an ideally linear measured kernel would tend toward ratio 2 and local exponent 1; this is a diagnostic expectation, not a pass condition.

## Structural complexity

Each timed path performs R passes over N fixed-width elements (or over fixed-width SIMD blocks plus a bounded tail). On the usual fixed-width word-RAM model this gives `Theta(N * R)` time and `Theta(N)` live array storage. Because this runner keeps R fixed, the expected N-scaling is `Theta(N)`. A fixed SIMD width can change the constant factor but not that asymptotic class.

This conclusion comes from the measured kernel's loop structure; the fitted exponent below is finite-range corroborating evidence, not its mathematical basis. In particular, a fit spanning a cache or memory-bandwidth transition can temporarily produce `p > 1`.

## Log-log OLS fits

| B | Implementation | All N | All slope p [95% bootstrap] | All R² | Tail N | Tail slope p [95% bootstrap] | Tail R² |
|---:|---|---:|---:|---:|---:|---:|---:|
| 256 | `compiler_const_percent` | 13 | 1.205137 [1.192597, 1.216941] | 0.997071 | 5 | 1.104755 [1.076545, 1.125972] | 0.995896 |
| 256 | `reist_compiler_auto` | 13 | 1.173955 [1.146151, 1.187230] | 0.997315 | 5 | 1.105313 [1.069604, 1.131842] | 0.996537 |
| 256 | `reist_automatic` | 13 | 1.181081 [1.141979, 1.198653] | 0.996550 | 5 | 1.105001 [1.081129, 1.124465] | 0.995870 |
| 12289 | `compiler_const_percent` | 13 | 1.170740 [1.154448, 1.175733] | 0.998411 | 5 | 1.100259 [1.085031, 1.115514] | 0.993884 |
| 12289 | `reist_compiler_auto` | 13 | 1.190419 [1.164884, 1.193732] | 0.998189 | 5 | 1.112780 [1.095652, 1.124682] | 0.990315 |
| 12289 | `reist_automatic` | 13 | 1.210895 [1.173146, 1.219619] | 0.998170 | 5 | 1.119419 [1.100898, 1.130990] | 0.991217 |
| 1000003 | `compiler_const_percent` | 13 | 1.151121 [1.133430, 1.154102] | 0.998327 | 5 | 1.062078 [1.047477, 1.101648] | 0.998620 |
| 1000003 | `reist_compiler_auto` | 13 | 1.190741 [1.163739, 1.195005] | 0.998337 | 5 | 1.082014 [1.038231, 1.118615] | 0.997333 |
| 1000003 | `reist_automatic` | 13 | 1.210597 [1.168979, 1.219284] | 0.998227 | 5 | 1.090276 [1.035993, 1.121684] | 0.997079 |
| 2147483647 | `compiler_const_percent` | 13 | 1.147644 [1.129895, 1.151630] | 0.998695 | 5 | 1.081607 [1.046433, 1.097311] | 0.997282 |
| 2147483647 | `reist_compiler_auto` | 13 | 1.186225 [1.150072, 1.190924] | 0.999088 | 5 | 1.113928 [1.083247, 1.126557] | 0.995836 |
| 2147483647 | `reist_automatic` | 13 | 1.213714 [1.169767, 1.222070] | 0.998930 | 5 | 1.110015 [1.097543, 1.127466] | 0.996366 |

### Finite-range numerical summary

Across all complete implementation/modulus pairs, the all-size slopes range from 1.147644 to 1.213714; the reported large-tail slopes range from 1.062078 to 1.119419.
At the final exact doubling to N=67108864, the doubling ratios range from 1.923245 to 2.053065, the corresponding local exponents from 0.943542 to 1.037779, and median ns/update from 0.258233 to 0.317933.
These are descriptive ranges over this host and run, not acceptance thresholds or a replacement for the complete per-point table.

## Complete measured points

Times are median `[Q1, Q3]`; ns/update is derived from the median time and `N × fixed repetitions`. No timing value determines whether a case passes validation.

| # | B | N | Implementation | Seconds median [Q1,Q3] | ns/update | T(2N)/T(N) | Local p | Raw CSV |
|---:|---:|---:|---|---:|---:|---:|---:|---|
| 25 | 256 | 16384 | `compiler_const_percent` | 1.845e-05 [1.4875e-05, 1.87e-05] | 0.070381 | — | — | [CSV](B256_N16384/results_reist_intrinsics.csv) |
| 25 | 256 | 16384 | `reist_compiler_auto` | 2.32e-05 [2.26e-05, 2.44e-05] | 0.088501 | — | — | [CSV](B256_N16384/results_reist_intrinsics.csv) |
| 25 | 256 | 16384 | `reist_automatic` | 2.375e-05 [1.91e-05, 2.38e-05] | 0.090599 | — | — | [CSV](B256_N16384/results_reist_intrinsics.csv) |
| 21 | 256 | 32768 | `compiler_const_percent` | 3.41e-05 [3.16e-05, 3.8775e-05] | 0.065041 | 1.848238 | 0.886151 | [CSV](B256_N32768/results_reist_intrinsics.csv) |
| 21 | 256 | 32768 | `reist_compiler_auto` | 4.585e-05 [4.445e-05, 4.91e-05] | 0.087452 | 1.976293 | 0.982797 | [CSV](B256_N32768/results_reist_intrinsics.csv) |
| 21 | 256 | 32768 | `reist_automatic` | 4.4e-05 [4.025e-05, 4.815e-05] | 0.083923 | 1.852632 | 0.889576 | [CSV](B256_N32768/results_reist_intrinsics.csv) |
| 30 | 256 | 65536 | `compiler_const_percent` | 5.985e-05 [5.9225e-05, 7.8425e-05] | 0.057077 | 1.755132 | 0.811580 | [CSV](B256_N65536/results_reist_intrinsics.csv) |
| 30 | 256 | 65536 | `reist_compiler_auto` | 0.00014075 [9.4875e-05, 0.0002703] | 0.134230 | 3.069793 | 1.618141 | [CSV](B256_N65536/results_reist_intrinsics.csv) |
| 30 | 256 | 65536 | `reist_automatic` | 8.705e-05 [7.2475e-05, 0.00023835] | 0.083017 | 1.978409 | 0.984341 | [CSV](B256_N65536/results_reist_intrinsics.csv) |
| 3 | 256 | 131072 | `compiler_const_percent` | 0.00016705 [0.00013, 0.0001982] | 0.079656 | 2.791145 | 1.480857 | [CSV](B256_N131072/results_reist_intrinsics.csv) |
| 3 | 256 | 131072 | `reist_compiler_auto` | 0.00020645 [0.00020385, 0.000324225] | 0.098443 | 1.466785 | 0.552657 | [CSV](B256_N131072/results_reist_intrinsics.csv) |
| 3 | 256 | 131072 | `reist_automatic` | 0.0002834 [0.00019755, 0.000491125] | 0.135136 | 3.255600 | 1.702924 | [CSV](B256_N131072/results_reist_intrinsics.csv) |
| 36 | 256 | 262144 | `compiler_const_percent` | 0.00029315 [0.00027875, 0.000327] | 0.069892 | 1.754864 | 0.811359 | [CSV](B256_N262144/results_reist_intrinsics.csv) |
| 36 | 256 | 262144 | `reist_compiler_auto` | 0.00039785 [0.0003872, 0.000411525] | 0.094855 | 1.927101 | 0.946432 | [CSV](B256_N262144/results_reist_intrinsics.csv) |
| 36 | 256 | 262144 | `reist_automatic` | 0.00033065 [0.00032505, 0.0003551] | 0.078833 | 1.166725 | 0.222465 | [CSV](B256_N262144/results_reist_intrinsics.csv) |
| 4 | 256 | 524288 | `compiler_const_percent` | 0.0011767 [0.0011665, 0.00128093] | 0.140274 | 4.013986 | 2.005036 | [CSV](B256_N524288/results_reist_intrinsics.csv) |
| 4 | 256 | 524288 | `reist_compiler_auto` | 0.00119785 [0.001176, 0.00125795] | 0.142795 | 3.010808 | 1.590151 | [CSV](B256_N524288/results_reist_intrinsics.csv) |
| 4 | 256 | 524288 | `reist_automatic` | 0.00119625 [0.0011736, 0.00122405] | 0.142604 | 3.617874 | 1.855142 | [CSV](B256_N524288/results_reist_intrinsics.csv) |
| 12 | 256 | 1048576 | `compiler_const_percent` | 0.0023776 [0.00228182, 0.00248527] | 0.141716 | 2.020566 | 1.014759 | [CSV](B256_N1048576/results_reist_intrinsics.csv) |
| 12 | 256 | 1048576 | `reist_compiler_auto` | 0.00241305 [0.00236623, 0.0025111] | 0.143829 | 2.014484 | 1.010411 | [CSV](B256_N1048576/results_reist_intrinsics.csv) |
| 12 | 256 | 1048576 | `reist_automatic` | 0.0023268 [0.0022902, 0.00242975] | 0.138688 | 1.945078 | 0.959828 | [CSV](B256_N1048576/results_reist_intrinsics.csv) |
| 43 | 256 | 2097152 | `compiler_const_percent` | 0.0048395 [0.00461018, 0.00532107] | 0.144228 | 2.035456 | 1.025352 | [CSV](B256_N2097152/results_reist_intrinsics.csv) |
| 43 | 256 | 2097152 | `reist_compiler_auto` | 0.00510035 [0.00486053, 0.00547425] | 0.152002 | 2.113653 | 1.079738 | [CSV](B256_N2097152/results_reist_intrinsics.csv) |
| 43 | 256 | 2097152 | `reist_automatic` | 0.00497625 [0.0046519, 0.00523073] | 0.148304 | 2.138667 | 1.096712 | [CSV](B256_N2097152/results_reist_intrinsics.csv) |
| 31 | 256 | 4194304 | `compiler_const_percent` | 0.0124539 [0.0116533, 0.0135149] | 0.185578 | 2.573386 | 1.363668 | [CSV](B256_N4194304/results_reist_intrinsics.csv) |
| 31 | 256 | 4194304 | `reist_compiler_auto` | 0.0149822 [0.0138222, 0.0168359] | 0.223253 | 2.937494 | 1.554586 | [CSV](B256_N4194304/results_reist_intrinsics.csv) |
| 31 | 256 | 4194304 | `reist_automatic` | 0.0145212 [0.0139493, 0.0155965] | 0.216383 | 2.918111 | 1.545035 | [CSV](B256_N4194304/results_reist_intrinsics.csv) |
| 52 | 256 | 8388608 | `compiler_const_percent` | 0.0322974 [0.0316516, 0.0343366] | 0.240634 | 2.593356 | 1.374820 | [CSV](B256_N8388608/results_reist_intrinsics.csv) |
| 52 | 256 | 8388608 | `reist_compiler_auto` | 0.0381915 [0.0370734, 0.0389811] | 0.284549 | 2.549116 | 1.349997 | [CSV](B256_N8388608/results_reist_intrinsics.csv) |
| 52 | 256 | 8388608 | `reist_automatic` | 0.0376849 [0.0359192, 0.0393887] | 0.280775 | 2.595159 | 1.375823 | [CSV](B256_N8388608/results_reist_intrinsics.csv) |
| 17 | 256 | 16777216 | `compiler_const_percent` | 0.0671978 [0.0667864, 0.0685456] | 0.250331 | 2.080595 | 1.056996 | [CSV](B256_N16777216/results_reist_intrinsics.csv) |
| 17 | 256 | 16777216 | `reist_compiler_auto` | 0.0801218 [0.079227, 0.080934] | 0.298477 | 2.097896 | 1.068943 | [CSV](B256_N16777216/results_reist_intrinsics.csv) |
| 17 | 256 | 16777216 | `reist_automatic` | 0.0776226 [0.0768408, 0.0785862] | 0.289167 | 2.059776 | 1.042487 | [CSV](B256_N16777216/results_reist_intrinsics.csv) |
| 51 | 256 | 33554432 | `compiler_const_percent` | 0.137911 [0.136495, 0.141048] | 0.256879 | 2.052313 | 1.037251 | [CSV](B256_N33554432/results_reist_intrinsics.csv) |
| 51 | 256 | 33554432 | `reist_compiler_auto` | 0.164574 [0.162889, 0.166721] | 0.306543 | 2.054049 | 1.038471 | [CSV](B256_N33554432/results_reist_intrinsics.csv) |
| 51 | 256 | 33554432 | `reist_automatic` | 0.162831 [0.160367, 0.165581] | 0.303296 | 2.097729 | 1.068828 | [CSV](B256_N33554432/results_reist_intrinsics.csv) |
| 48 | 256 | 67108864 | `compiler_const_percent` | 0.277276 [0.27269, 0.285738] | 0.258233 | 2.010542 | 1.007584 | [CSV](B256_N67108864/results_reist_intrinsics.csv) |
| 48 | 256 | 67108864 | `reist_compiler_auto` | 0.332692 [0.326518, 0.33731] | 0.309843 | 2.021532 | 1.015449 | [CSV](B256_N67108864/results_reist_intrinsics.csv) |
| 48 | 256 | 67108864 | `reist_automatic` | 0.321671 [0.318911, 0.332445] | 0.299579 | 1.975487 | 0.982208 | [CSV](B256_N67108864/results_reist_intrinsics.csv) |
| 39 | 12289 | 16384 | `compiler_const_percent` | 2.465e-05 [2.44e-05, 2.5325e-05] | 0.094032 | — | — | [CSV](B12289_N16384/results_reist_intrinsics.csv) |
| 39 | 12289 | 16384 | `reist_compiler_auto` | 2.21e-05 [2.1925e-05, 2.22e-05] | 0.084305 | — | — | [CSV](B12289_N16384/results_reist_intrinsics.csv) |
| 39 | 12289 | 16384 | `reist_automatic` | 1.82e-05 [1.7375e-05, 1.8425e-05] | 0.069427 | — | — | [CSV](B12289_N16384/results_reist_intrinsics.csv) |
| 2 | 12289 | 32768 | `compiler_const_percent` | 5.05e-05 [4.98e-05, 5.1925e-05] | 0.096321 | 2.048682 | 1.034696 | [CSV](B12289_N32768/results_reist_intrinsics.csv) |
| 2 | 12289 | 32768 | `reist_compiler_auto` | 4.675e-05 [4.5275e-05, 4.7975e-05] | 0.089169 | 2.115385 | 1.080920 | [CSV](B12289_N32768/results_reist_intrinsics.csv) |
| 2 | 12289 | 32768 | `reist_automatic` | 3.8e-05 [3.31e-05, 4.0475e-05] | 0.072479 | 2.087912 | 1.062061 | [CSV](B12289_N32768/results_reist_intrinsics.csv) |
| 1 | 12289 | 65536 | `compiler_const_percent` | 0.0001147 [0.000104025, 0.000121175] | 0.109386 | 2.271287 | 1.183510 | [CSV](B12289_N65536/results_reist_intrinsics.csv) |
| 1 | 12289 | 65536 | `reist_compiler_auto` | 9.88e-05 [9.71e-05, 0.00020955] | 0.094223 | 2.113369 | 1.079545 | [CSV](B12289_N65536/results_reist_intrinsics.csv) |
| 1 | 12289 | 65536 | `reist_automatic` | 8.405e-05 [7.74e-05, 0.000178225] | 0.080156 | 2.211842 | 1.145248 | [CSV](B12289_N65536/results_reist_intrinsics.csv) |
| 38 | 12289 | 131072 | `compiler_const_percent` | 0.00025795 [0.00024715, 0.00038865] | 0.123000 | 2.248910 | 1.169226 | [CSV](B12289_N131072/results_reist_intrinsics.csv) |
| 38 | 12289 | 131072 | `reist_compiler_auto` | 0.0002142 [0.0002029, 0.00033685] | 0.102139 | 2.168016 | 1.116376 | [CSV](B12289_N131072/results_reist_intrinsics.csv) |
| 38 | 12289 | 131072 | `reist_automatic` | 0.00020925 [0.000173675, 0.000579075] | 0.099778 | 2.489590 | 1.315908 | [CSV](B12289_N131072/results_reist_intrinsics.csv) |
| 47 | 12289 | 262144 | `compiler_const_percent` | 0.0004576 [0.000453675, 0.00046335] | 0.109100 | 1.773987 | 0.826996 | [CSV](B12289_N262144/results_reist_intrinsics.csv) |
| 47 | 12289 | 262144 | `reist_compiler_auto` | 0.0004031 [0.000399875, 0.00040725] | 0.096107 | 1.881886 | 0.912179 | [CSV](B12289_N262144/results_reist_intrinsics.csv) |
| 47 | 12289 | 262144 | `reist_automatic` | 0.0003455 [0.000318925, 0.00035805] | 0.082374 | 1.651135 | 0.723458 | [CSV](B12289_N262144/results_reist_intrinsics.csv) |
| 29 | 12289 | 524288 | `compiler_const_percent` | 0.0011999 [0.00116485, 0.00120922] | 0.143039 | 2.622159 | 1.390755 | [CSV](B12289_N524288/results_reist_intrinsics.csv) |
| 29 | 12289 | 524288 | `reist_compiler_auto` | 0.0011778 [0.0011705, 0.00121103] | 0.140405 | 2.921856 | 1.546885 | [CSV](B12289_N524288/results_reist_intrinsics.csv) |
| 29 | 12289 | 524288 | `reist_automatic` | 0.00120425 [0.0011698, 0.00125683] | 0.143558 | 3.485528 | 1.801377 | [CSV](B12289_N524288/results_reist_intrinsics.csv) |
| 26 | 12289 | 1048576 | `compiler_const_percent` | 0.0024462 [0.0023149, 0.00252967] | 0.145805 | 2.038670 | 1.027628 | [CSV](B12289_N1048576/results_reist_intrinsics.csv) |
| 26 | 12289 | 1048576 | `reist_compiler_auto` | 0.0024199 [0.00239077, 0.00246648] | 0.144237 | 2.054593 | 1.038853 | [CSV](B12289_N1048576/results_reist_intrinsics.csv) |
| 26 | 12289 | 1048576 | `reist_automatic` | 0.00231245 [0.00212158, 0.0024253] | 0.137833 | 1.920241 | 0.941287 | [CSV](B12289_N1048576/results_reist_intrinsics.csv) |
| 41 | 12289 | 2097152 | `compiler_const_percent` | 0.00545565 [0.00504763, 0.00564128] | 0.162591 | 2.230255 | 1.157209 | [CSV](B12289_N2097152/results_reist_intrinsics.csv) |
| 41 | 12289 | 2097152 | `reist_compiler_auto` | 0.00543075 [0.00502205, 0.00569768] | 0.161849 | 2.244204 | 1.166204 | [CSV](B12289_N2097152/results_reist_intrinsics.csv) |
| 41 | 12289 | 2097152 | `reist_automatic` | 0.00532275 [0.00504677, 0.00540097] | 0.158630 | 2.301779 | 1.202750 | [CSV](B12289_N2097152/results_reist_intrinsics.csv) |
| 15 | 12289 | 4194304 | `compiler_const_percent` | 0.0150525 [0.0148558, 0.0152507] | 0.224300 | 2.759066 | 1.464180 | [CSV](B12289_N4194304/results_reist_intrinsics.csv) |
| 15 | 12289 | 4194304 | `reist_compiler_auto` | 0.0142841 [0.0139637, 0.0147489] | 0.212850 | 2.630235 | 1.395192 | [CSV](B12289_N4194304/results_reist_intrinsics.csv) |
| 15 | 12289 | 4194304 | `reist_automatic` | 0.0137772 [0.013271, 0.0143754] | 0.205296 | 2.588361 | 1.372039 | [CSV](B12289_N4194304/results_reist_intrinsics.csv) |
| 20 | 12289 | 8388608 | `compiler_const_percent` | 0.0414006 [0.0386388, 0.0436433] | 0.308459 | 2.750414 | 1.459649 | [CSV](B12289_N8388608/results_reist_intrinsics.csv) |
| 20 | 12289 | 8388608 | `reist_compiler_auto` | 0.0426426 [0.0408006, 0.0464019] | 0.317712 | 2.985309 | 1.577880 | [CSV](B12289_N8388608/results_reist_intrinsics.csv) |
| 20 | 12289 | 8388608 | `reist_automatic` | 0.0405892 [0.039771, 0.0420736] | 0.302413 | 2.946110 | 1.558811 | [CSV](B12289_N8388608/results_reist_intrinsics.csv) |
| 49 | 12289 | 16777216 | `compiler_const_percent` | 0.0812724 [0.0791649, 0.0841887] | 0.302763 | 1.963074 | 0.973115 | [CSV](B12289_N16777216/results_reist_intrinsics.csv) |
| 49 | 12289 | 16777216 | `reist_compiler_auto` | 0.0813187 [0.079909, 0.0838057] | 0.302936 | 1.906984 | 0.931293 | [CSV](B12289_N16777216/results_reist_intrinsics.csv) |
| 49 | 12289 | 16777216 | `reist_automatic` | 0.0793679 [0.076832, 0.0817644] | 0.295668 | 1.955396 | 0.967461 | [CSV](B12289_N16777216/results_reist_intrinsics.csv) |
| 32 | 12289 | 33554432 | `compiler_const_percent` | 0.167175 [0.164503, 0.171969] | 0.311388 | 2.056969 | 1.040520 | [CSV](B12289_N33554432/results_reist_intrinsics.csv) |
| 32 | 12289 | 33554432 | `reist_compiler_auto` | 0.167065 [0.164447, 0.169171] | 0.311183 | 2.054445 | 1.038749 | [CSV](B12289_N33554432/results_reist_intrinsics.csv) |
| 32 | 12289 | 33554432 | `reist_automatic` | 0.162394 [0.159244, 0.165144] | 0.302483 | 2.046099 | 1.032876 | [CSV](B12289_N33554432/results_reist_intrinsics.csv) |
| 6 | 12289 | 67108864 | `compiler_const_percent` | 0.339298 [0.325501, 0.344932] | 0.315996 | 2.029601 | 1.021196 | [CSV](B12289_N67108864/results_reist_intrinsics.csv) |
| 6 | 12289 | 67108864 | `reist_compiler_auto` | 0.341378 [0.336322, 0.345234] | 0.317933 | 2.043383 | 1.030959 | [CSV](B12289_N67108864/results_reist_intrinsics.csv) |
| 6 | 12289 | 67108864 | `reist_automatic` | 0.333406 [0.323668, 0.335774] | 0.310509 | 2.053065 | 1.037779 | [CSV](B12289_N67108864/results_reist_intrinsics.csv) |
| 37 | 1000003 | 16384 | `compiler_const_percent` | 2.875e-05 [2.82e-05, 2.9025e-05] | 0.109673 | — | — | [CSV](B1000003_N16384/results_reist_intrinsics.csv) |
| 37 | 1000003 | 16384 | `reist_compiler_auto` | 2.21e-05 [2.2e-05, 2.23e-05] | 0.084305 | — | — | [CSV](B1000003_N16384/results_reist_intrinsics.csv) |
| 37 | 1000003 | 16384 | `reist_automatic` | 1.835e-05 [1.76e-05, 1.965e-05] | 0.070000 | — | — | [CSV](B1000003_N16384/results_reist_intrinsics.csv) |
| 9 | 1000003 | 32768 | `compiler_const_percent` | 5.635e-05 [5.6e-05, 5.6875e-05] | 0.107479 | 1.960000 | 0.970854 | [CSV](B1000003_N32768/results_reist_intrinsics.csv) |
| 9 | 1000003 | 32768 | `reist_compiler_auto` | 4.46e-05 [4.385e-05, 4.715e-05] | 0.085068 | 2.018100 | 1.012997 | [CSV](B1000003_N32768/results_reist_intrinsics.csv) |
| 9 | 1000003 | 32768 | `reist_automatic` | 3.735e-05 [3.3125e-05, 3.9475e-05] | 0.071239 | 2.035422 | 1.025328 | [CSV](B1000003_N32768/results_reist_intrinsics.csv) |
| 50 | 1000003 | 65536 | `compiler_const_percent` | 0.00012665 [0.0001243, 0.00013135] | 0.120783 | 2.247560 | 1.168360 | [CSV](B1000003_N65536/results_reist_intrinsics.csv) |
| 50 | 1000003 | 65536 | `reist_compiler_auto` | 9.775e-05 [9.155e-05, 0.00021125] | 0.093222 | 2.191704 | 1.132053 | [CSV](B1000003_N65536/results_reist_intrinsics.csv) |
| 50 | 1000003 | 65536 | `reist_automatic` | 8.47e-05 [7.095e-05, 0.000188775] | 0.080776 | 2.267738 | 1.181254 | [CSV](B1000003_N65536/results_reist_intrinsics.csv) |
| 42 | 1000003 | 131072 | `compiler_const_percent` | 0.00029835 [0.0002762, 0.000458275] | 0.142264 | 2.355705 | 1.236159 | [CSV](B1000003_N131072/results_reist_intrinsics.csv) |
| 42 | 1000003 | 131072 | `reist_compiler_auto` | 0.0002125 [0.0002011, 0.0003509] | 0.101328 | 2.173913 | 1.120294 | [CSV](B1000003_N131072/results_reist_intrinsics.csv) |
| 42 | 1000003 | 131072 | `reist_automatic` | 0.00019785 [0.000168775, 0.000580875] | 0.094342 | 2.335891 | 1.223973 | [CSV](B1000003_N131072/results_reist_intrinsics.csv) |
| 7 | 1000003 | 262144 | `compiler_const_percent` | 0.0005274 [0.0005124, 0.0005675] | 0.125742 | 1.767722 | 0.821892 | [CSV](B1000003_N262144/results_reist_intrinsics.csv) |
| 7 | 1000003 | 262144 | `reist_compiler_auto` | 0.0004017 [0.0003821, 0.00042025] | 0.095773 | 1.890353 | 0.918656 | [CSV](B1000003_N262144/results_reist_intrinsics.csv) |
| 7 | 1000003 | 262144 | `reist_automatic` | 0.0003387 [0.000321875, 0.000360525] | 0.080752 | 1.711903 | 0.775601 | [CSV](B1000003_N262144/results_reist_intrinsics.csv) |
| 13 | 1000003 | 524288 | `compiler_const_percent` | 0.00121715 [0.00117727, 0.0012442] | 0.145096 | 2.307831 | 1.206537 | [CSV](B1000003_N524288/results_reist_intrinsics.csv) |
| 13 | 1000003 | 524288 | `reist_compiler_auto` | 0.00113515 [0.0011057, 0.0012069] | 0.135320 | 2.825865 | 1.498693 | [CSV](B1000003_N524288/results_reist_intrinsics.csv) |
| 13 | 1000003 | 524288 | `reist_automatic` | 0.00115805 [0.001106, 0.00117855] | 0.138050 | 3.419102 | 1.773618 | [CSV](B1000003_N524288/results_reist_intrinsics.csv) |
| 8 | 1000003 | 1048576 | `compiler_const_percent` | 0.00252505 [0.00246393, 0.00260945] | 0.150505 | 2.074559 | 1.052805 | [CSV](B1000003_N1048576/results_reist_intrinsics.csv) |
| 8 | 1000003 | 1048576 | `reist_compiler_auto` | 0.00240315 [0.00234015, 0.00250225] | 0.143239 | 2.117033 | 1.082044 | [CSV](B1000003_N1048576/results_reist_intrinsics.csv) |
| 8 | 1000003 | 1048576 | `reist_automatic` | 0.0023373 [0.0022839, 0.00236965] | 0.139314 | 2.018307 | 1.013145 | [CSV](B1000003_N1048576/results_reist_intrinsics.csv) |
| 35 | 1000003 | 2097152 | `compiler_const_percent` | 0.0056686 [0.0053977, 0.00596628] | 0.168937 | 2.244946 | 1.166681 | [CSV](B1000003_N2097152/results_reist_intrinsics.csv) |
| 35 | 1000003 | 2097152 | `reist_compiler_auto` | 0.0054215 [0.0051423, 0.0056823] | 0.161573 | 2.255997 | 1.173765 | [CSV](B1000003_N2097152/results_reist_intrinsics.csv) |
| 35 | 1000003 | 2097152 | `reist_automatic` | 0.00537355 [0.00529805, 0.00558072] | 0.160144 | 2.299042 | 1.201033 | [CSV](B1000003_N2097152/results_reist_intrinsics.csv) |
| 44 | 1000003 | 4194304 | `compiler_const_percent` | 0.0176308 [0.0155219, 0.0183823] | 0.262720 | 3.110265 | 1.637038 | [CSV](B1000003_N4194304/results_reist_intrinsics.csv) |
| 44 | 1000003 | 4194304 | `reist_compiler_auto` | 0.0161907 [0.0144362, 0.0188822] | 0.241259 | 2.986378 | 1.578397 | [CSV](B1000003_N4194304/results_reist_intrinsics.csv) |
| 44 | 1000003 | 4194304 | `reist_automatic` | 0.0155738 [0.0142687, 0.0187468] | 0.232068 | 2.898233 | 1.535174 | [CSV](B1000003_N4194304/results_reist_intrinsics.csv) |
| 14 | 1000003 | 8388608 | `compiler_const_percent` | 0.0377141 [0.0370004, 0.0386496] | 0.280992 | 2.139097 | 1.097002 | [CSV](B1000003_N8388608/results_reist_intrinsics.csv) |
| 14 | 1000003 | 8388608 | `reist_compiler_auto` | 0.0375091 [0.0361984, 0.0383784] | 0.279464 | 2.316711 | 1.212078 | [CSV](B1000003_N8388608/results_reist_intrinsics.csv) |
| 14 | 1000003 | 8388608 | `reist_automatic` | 0.0354651 [0.0347122, 0.0367271] | 0.264236 | 2.277228 | 1.187279 | [CSV](B1000003_N8388608/results_reist_intrinsics.csv) |
| 34 | 1000003 | 16777216 | `compiler_const_percent` | 0.0845541 [0.081741, 0.0859615] | 0.314988 | 2.241974 | 1.164770 | [CSV](B1000003_N16777216/results_reist_intrinsics.csv) |
| 34 | 1000003 | 16777216 | `reist_compiler_auto` | 0.0830314 [0.0808082, 0.0856196] | 0.309316 | 2.213635 | 1.146417 | [CSV](B1000003_N16777216/results_reist_intrinsics.csv) |
| 34 | 1000003 | 16777216 | `reist_automatic` | 0.0815854 [0.0782279, 0.0837045] | 0.303929 | 2.300440 | 1.201910 | [CSV](B1000003_N16777216/results_reist_intrinsics.csv) |
| 45 | 1000003 | 33554432 | `compiler_const_percent` | 0.168805 [0.166019, 0.174028] | 0.314423 | 1.996412 | 0.997409 | [CSV](B1000003_N33554432/results_reist_intrinsics.csv) |
| 45 | 1000003 | 33554432 | `reist_compiler_auto` | 0.168757 [0.165329, 0.173994] | 0.314334 | 2.032446 | 1.023217 | [CSV](B1000003_N33554432/results_reist_intrinsics.csv) |
| 45 | 1000003 | 33554432 | `reist_automatic` | 0.164405 [0.162244, 0.169167] | 0.306228 | 2.015126 | 1.010870 | [CSV](B1000003_N33554432/results_reist_intrinsics.csv) |
| 11 | 1000003 | 67108864 | `compiler_const_percent` | 0.330688 [0.327491, 0.333531] | 0.307978 | 1.959000 | 0.970117 | [CSV](B1000003_N67108864/results_reist_intrinsics.csv) |
| 11 | 1000003 | 67108864 | `reist_compiler_auto` | 0.324561 [0.323887, 0.33417] | 0.302271 | 1.923245 | 0.943542 | [CSV](B1000003_N67108864/results_reist_intrinsics.csv) |
| 11 | 1000003 | 67108864 | `reist_automatic` | 0.316495 [0.315708, 0.324444] | 0.294759 | 1.925098 | 0.944932 | [CSV](B1000003_N67108864/results_reist_intrinsics.csv) |
| 16 | 2147483647 | 16384 | `compiler_const_percent` | 2.83e-05 [2.785e-05, 2.83e-05] | 0.107956 | — | — | [CSV](B2147483647_N16384/results_reist_intrinsics.csv) |
| 16 | 2147483647 | 16384 | `reist_compiler_auto` | 2.16e-05 [2.15e-05, 2.17e-05] | 0.082397 | — | — | [CSV](B2147483647_N16384/results_reist_intrinsics.csv) |
| 16 | 2147483647 | 16384 | `reist_automatic` | 1.645e-05 [1.4875e-05, 1.6525e-05] | 0.062752 | — | — | [CSV](B2147483647_N16384/results_reist_intrinsics.csv) |
| 28 | 2147483647 | 32768 | `compiler_const_percent` | 5.74e-05 [5.6575e-05, 5.8125e-05] | 0.109482 | 2.028269 | 1.020249 | [CSV](B2147483647_N32768/results_reist_intrinsics.csv) |
| 28 | 2147483647 | 32768 | `reist_compiler_auto` | 4.41e-05 [4.315e-05, 4.5425e-05] | 0.084114 | 2.041667 | 1.029747 | [CSV](B2147483647_N32768/results_reist_intrinsics.csv) |
| 28 | 2147483647 | 32768 | `reist_automatic` | 3.295e-05 [3.22e-05, 3.4e-05] | 0.062847 | 2.003040 | 1.002191 | [CSV](B2147483647_N32768/results_reist_intrinsics.csv) |
| 33 | 2147483647 | 65536 | `compiler_const_percent` | 0.00012445 [0.000120925, 0.000130175] | 0.118685 | 2.168118 | 1.116444 | [CSV](B2147483647_N65536/results_reist_intrinsics.csv) |
| 33 | 2147483647 | 65536 | `reist_compiler_auto` | 9.735e-05 [9.245e-05, 0.00026915] | 0.092840 | 2.207483 | 1.142402 | [CSV](B2147483647_N65536/results_reist_intrinsics.csv) |
| 33 | 2147483647 | 65536 | `reist_automatic` | 8.425e-05 [7.0625e-05, 0.00023325] | 0.080347 | 2.556904 | 1.354398 | [CSV](B2147483647_N65536/results_reist_intrinsics.csv) |
| 46 | 2147483647 | 131072 | `compiler_const_percent` | 0.00030895 [0.000289075, 0.00058375] | 0.147319 | 2.482523 | 1.311807 | [CSV](B2147483647_N131072/results_reist_intrinsics.csv) |
| 46 | 2147483647 | 131072 | `reist_compiler_auto` | 0.00023225 [0.00020615, 0.0005579] | 0.110745 | 2.385722 | 1.254426 | [CSV](B2147483647_N131072/results_reist_intrinsics.csv) |
| 46 | 2147483647 | 131072 | `reist_automatic` | 0.0002124 [0.000180375, 0.0005324] | 0.101280 | 2.521068 | 1.334035 | [CSV](B2147483647_N131072/results_reist_intrinsics.csv) |
| 5 | 2147483647 | 262144 | `compiler_const_percent` | 0.0005276 [0.000519325, 0.00063045] | 0.125790 | 1.707720 | 0.772071 | [CSV](B2147483647_N262144/results_reist_intrinsics.csv) |
| 5 | 2147483647 | 262144 | `reist_compiler_auto` | 0.0004349 [0.000419975, 0.000525075] | 0.103688 | 1.872551 | 0.905005 | [CSV](B2147483647_N262144/results_reist_intrinsics.csv) |
| 5 | 2147483647 | 262144 | `reist_automatic` | 0.0003939 [0.0003544, 0.000464875] | 0.093913 | 1.854520 | 0.891046 | [CSV](B2147483647_N262144/results_reist_intrinsics.csv) |
| 19 | 2147483647 | 524288 | `compiler_const_percent` | 0.0013068 [0.00124463, 0.00141128] | 0.155783 | 2.476876 | 1.308522 | [CSV](B2147483647_N524288/results_reist_intrinsics.csv) |
| 19 | 2147483647 | 524288 | `reist_compiler_auto` | 0.00121285 [0.00119065, 0.00124683] | 0.144583 | 2.788802 | 1.479646 | [CSV](B2147483647_N524288/results_reist_intrinsics.csv) |
| 19 | 2147483647 | 524288 | `reist_automatic` | 0.0012152 [0.0011771, 0.00126273] | 0.144863 | 3.085047 | 1.625292 | [CSV](B2147483647_N524288/results_reist_intrinsics.csv) |
| 24 | 2147483647 | 1048576 | `compiler_const_percent` | 0.0025588 [0.00247845, 0.00261637] | 0.152516 | 1.958066 | 0.969429 | [CSV](B2147483647_N1048576/results_reist_intrinsics.csv) |
| 24 | 2147483647 | 1048576 | `reist_compiler_auto` | 0.00252375 [0.00247367, 0.00253955] | 0.150427 | 2.080843 | 1.057168 | [CSV](B2147483647_N1048576/results_reist_intrinsics.csv) |
| 24 | 2147483647 | 1048576 | `reist_automatic` | 0.00242345 [0.0023789, 0.00253088] | 0.144449 | 1.994281 | 0.995869 | [CSV](B2147483647_N1048576/results_reist_intrinsics.csv) |
| 22 | 2147483647 | 2097152 | `compiler_const_percent` | 0.0058034 [0.00549015, 0.00593513] | 0.172955 | 2.268016 | 1.181431 | [CSV](B2147483647_N2097152/results_reist_intrinsics.csv) |
| 22 | 2147483647 | 2097152 | `reist_compiler_auto` | 0.005727 [0.00534075, 0.00623383] | 0.170678 | 2.269242 | 1.182211 | [CSV](B2147483647_N2097152/results_reist_intrinsics.csv) |
| 22 | 2147483647 | 2097152 | `reist_automatic` | 0.00544325 [0.0053368, 0.00554448] | 0.162221 | 2.246075 | 1.167406 | [CSV](B2147483647_N2097152/results_reist_intrinsics.csv) |
| 27 | 2147483647 | 4194304 | `compiler_const_percent` | 0.0160074 [0.0153937, 0.0178386] | 0.238529 | 2.758280 | 1.463769 | [CSV](B2147483647_N4194304/results_reist_intrinsics.csv) |
| 27 | 2147483647 | 4194304 | `reist_compiler_auto` | 0.0145557 [0.014093, 0.0157584] | 0.216898 | 2.541601 | 1.345738 | [CSV](B2147483647_N4194304/results_reist_intrinsics.csv) |
| 27 | 2147483647 | 4194304 | `reist_automatic` | 0.0143002 [0.0136176, 0.0149007] | 0.213089 | 2.627135 | 1.393490 | [CSV](B2147483647_N4194304/results_reist_intrinsics.csv) |
| 40 | 2147483647 | 8388608 | `compiler_const_percent` | 0.0388827 [0.0376154, 0.0413015] | 0.289699 | 2.429048 | 1.280391 | [CSV](B2147483647_N8388608/results_reist_intrinsics.csv) |
| 40 | 2147483647 | 8388608 | `reist_compiler_auto` | 0.0375583 [0.0365499, 0.0395089] | 0.279831 | 2.580307 | 1.367543 | [CSV](B2147483647_N8388608/results_reist_intrinsics.csv) |
| 40 | 2147483647 | 8388608 | `reist_automatic` | 0.0365749 [0.0351988, 0.0376835] | 0.272504 | 2.557658 | 1.354824 | [CSV](B2147483647_N8388608/results_reist_intrinsics.csv) |
| 18 | 2147483647 | 16777216 | `compiler_const_percent` | 0.0817304 [0.0801746, 0.0824069] | 0.304469 | 2.101971 | 1.071743 | [CSV](B2147483647_N16777216/results_reist_intrinsics.csv) |
| 18 | 2147483647 | 16777216 | `reist_compiler_auto` | 0.0809708 [0.0800891, 0.0820055] | 0.301640 | 2.155871 | 1.108271 | [CSV](B2147483647_N16777216/results_reist_intrinsics.csv) |
| 18 | 2147483647 | 16777216 | `reist_automatic` | 0.0771445 [0.0767455, 0.0784662] | 0.287385 | 2.109218 | 1.076708 | [CSV](B2147483647_N16777216/results_reist_intrinsics.csv) |
| 23 | 2147483647 | 33554432 | `compiler_const_percent` | 0.165585 [0.164471, 0.170741] | 0.308426 | 2.025990 | 1.018627 | [CSV](B2147483647_N33554432/results_reist_intrinsics.csv) |
| 23 | 2147483647 | 33554432 | `reist_compiler_auto` | 0.163578 [0.162116, 0.166263] | 0.304687 | 2.020204 | 1.014501 | [CSV](B2147483647_N33554432/results_reist_intrinsics.csv) |
| 23 | 2147483647 | 33554432 | `reist_automatic` | 0.160404 [0.158736, 0.163644] | 0.298776 | 2.079268 | 1.056075 | [CSV](B2147483647_N33554432/results_reist_intrinsics.csv) |
| 10 | 2147483647 | 67108864 | `compiler_const_percent` | 0.329358 [0.328747, 0.334431] | 0.306739 | 1.989060 | 0.992087 | [CSV](B2147483647_N67108864/results_reist_intrinsics.csv) |
| 10 | 2147483647 | 67108864 | `reist_compiler_auto` | 0.331249 [0.325394, 0.332892] | 0.308500 | 2.025027 | 1.017941 | [CSV](B2147483647_N67108864/results_reist_intrinsics.csv) |
| 10 | 2147483647 | 67108864 | `reist_automatic` | 0.319936 [0.318421, 0.322567] | 0.297964 | 1.994567 | 0.996075 | [CSV](B2147483647_N67108864/results_reist_intrinsics.csv) |

## Pairwise REIST comparisons

These ratios are included for context but do not enter the complexity fit.

| # | B | N | Constant/automatic | Constant/compiler_auto | Compiler_auto/automatic |
|---:|---:|---:|---:|---:|---:|
| 25 | 256 | 16384 | 0.783170 | 0.787854 | 1.079577 |
| 21 | 256 | 32768 | 0.828453 | 0.715170 | 1.110246 |
| 30 | 256 | 65536 | 0.668479 | 0.482394 | 1.383820 |
| 3 | 256 | 131072 | 0.616456 | 0.728385 | 0.857004 |
| 36 | 256 | 262144 | 0.868550 | 0.743680 | 1.164881 |
| 4 | 256 | 524288 | 0.999784 | 0.971936 | 1.035131 |
| 12 | 256 | 1048576 | 1.041584 | 0.970558 | 1.052540 |
| 43 | 256 | 2097152 | 1.010982 | 0.961873 | 1.026000 |
| 31 | 256 | 4194304 | 0.839641 | 0.855627 | 1.008366 |
| 52 | 256 | 8388608 | 0.877245 | 0.867506 | 1.024148 |
| 17 | 256 | 16777216 | 0.873767 | 0.848309 | 1.026452 |
| 51 | 256 | 33554432 | 0.851759 | 0.846491 | 1.017583 |
| 48 | 256 | 67108864 | 0.868236 | 0.844111 | 1.020507 |
| 39 | 12289 | 16384 | 1.348764 | 1.117382 | 1.207086 |
| 2 | 12289 | 32768 | 1.371829 | 1.079060 | 1.232305 |
| 1 | 12289 | 65536 | 1.234519 | 1.092709 | 1.167050 |
| 38 | 12289 | 131072 | 1.334624 | 1.203481 | 1.059928 |
| 47 | 12289 | 262144 | 1.345896 | 1.141634 | 1.187949 |
| 29 | 12289 | 524288 | 0.993184 | 1.025268 | 0.974170 |
| 26 | 12289 | 1048576 | 1.087065 | 0.987145 | 1.055716 |
| 41 | 12289 | 2097152 | 1.054637 | 1.041224 | 1.040067 |
| 15 | 12289 | 4194304 | 1.102511 | 1.059989 | 1.054531 |
| 20 | 12289 | 8388608 | 1.023224 | 0.946369 | 1.112936 |
| 49 | 12289 | 16777216 | 1.013137 | 0.977695 | 1.039644 |
| 32 | 12289 | 33554432 | 1.022008 | 0.999823 | 1.024087 |
| 6 | 12289 | 67108864 | 1.023562 | 0.996432 | 1.026368 |
| 37 | 1000003 | 16384 | 1.572951 | 1.299091 | 1.203321 |
| 9 | 1000003 | 32768 | 1.527874 | 1.263888 | 1.198701 |
| 50 | 1000003 | 65536 | 1.447713 | 1.300786 | 1.200259 |
| 42 | 1000003 | 131072 | 1.533557 | 1.395729 | 1.180557 |
| 7 | 1000003 | 262144 | 1.620033 | 1.308910 | 1.203829 |
| 13 | 1000003 | 524288 | 1.069934 | 1.051850 | 0.986097 |
| 8 | 1000003 | 1048576 | 1.074921 | 1.048825 | 1.053514 |
| 35 | 1000003 | 2097152 | 1.059198 | 1.020087 | 0.993661 |
| 44 | 1000003 | 4194304 | 1.099942 | 1.071767 | 1.011785 |
| 14 | 1000003 | 8388608 | 1.052308 | 1.012544 | 1.052982 |
| 34 | 1000003 | 16777216 | 1.040641 | 1.014232 | 1.039552 |
| 45 | 1000003 | 33554432 | 1.015159 | 0.991511 | 1.039955 |
| 11 | 1000003 | 67108864 | 1.035482 | 1.012234 | 1.025483 |
| 16 | 2147483647 | 16384 | 1.715152 | 1.301843 | 1.307003 |
| 28 | 2147483647 | 32768 | 1.716155 | 1.304747 | 1.303981 |
| 33 | 2147483647 | 65536 | 1.433312 | 1.253613 | 1.199713 |
| 46 | 2147483647 | 131072 | 1.538362 | 1.377009 | 1.116884 |
| 5 | 2147483647 | 262144 | 1.380052 | 1.248155 | 1.222138 |
| 19 | 2147483647 | 524288 | 1.084685 | 1.079580 | 1.004256 |
| 24 | 2147483647 | 1048576 | 1.046259 | 1.021430 | 1.025534 |
| 22 | 2147483647 | 2097152 | 1.027998 | 1.008619 | 1.047705 |
| 27 | 2147483647 | 4194304 | 1.157271 | 1.044292 | 1.060656 |
| 40 | 2147483647 | 8388608 | 1.077839 | 1.024274 | 1.050085 |
| 18 | 2147483647 | 16777216 | 1.054390 | 1.009594 | 1.048074 |
| 23 | 2147483647 | 33554432 | 1.037235 | 1.013534 | 1.023697 |
| 10 | 2147483647 | 67108864 | 1.033087 | 0.996257 | 1.034345 |

## Interpretation boundary

The benchmark measures prepared, repeated modular addition. It does not include input preparation and is not an end-to-end cryptographic workload. A slope near one with a high R² is evidence consistent with linear scaling over the measured interval; it does not establish behavior for arbitrary N, other machines, other compilers, or other algorithms.
