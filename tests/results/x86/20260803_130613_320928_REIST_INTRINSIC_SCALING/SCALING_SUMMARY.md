# REIST intrinsic scaling summary

- Matrix scope: **predeclared default size/modulus matrix with explicit target updates**
- Started UTC: `2026-08-03T11:06:13+00:00`
- Finished UTC: `2026-08-03T11:07:13+00:00`
- Binary: `D:\Development\reist-crypto-bench\build\integration\const-mod-scaling\bench_reist_intrinsics.exe`
- Binary SHA-256: `06f94f22d648415a984129662cbe043ef56cd60a72db13f29c5d035532a5d4be`
- Host: `Windows-11-10.0.26200-SP0` / `AMD64`
- Python: `3.12.9`
- Sizes (13): `1, 3, 8, 17, 64, 257, 1024, 4096, 16384, 65536, 262144, 1000003, 4000003`
- Moduli (9): `256, 257, 12289, 65536, 65537, 1000000, 1000003, 1000000007, 2147483647`
- Target updates: `33554432` per implementation and trial
- Trials: `12`; all six three-way execution orders occur equally often
- Completed cases: **117/117**
- Binary hash still matches at the post-run audit: **yes**

Repetitions are fixed mechanically as `max(1, ceil(target_updates / elements))`. No case is selected or discarded using its timing result. Input preparation, copies, and validation follow the benchmark's prepared steady-state scope.

Classification is descriptive, never a pass threshold: **positive** means Q1 > 1, **negative** means Q3 < 1, and **mixed** covers every other interval.

## Complete-matrix aggregates

All requested cases validated; the aggregates below cover the complete matrix.

| Comparison | Geometric mean of paired medians | Positive | Mixed | Negative |
|---|---:|---:|---:|---:|
| constant % / REIST automatic | 1.2576x | 76 | 16 | 25 |
| constant % / REIST compiler_auto | 1.0741x | 58 | 20 | 39 |
| REIST compiler_auto / REIST automatic | 1.1784x | 78 | 34 | 5 |

## Full requested matrix

The primary classification applies to compiler-optimized constant `%` divided by public REIST `automatic`.

| # | B | Elements | Reps | Constant `%` s | REIST compiler s | REIST automatic s | Const/automatic median [Q1,Q3] | Class | Const/compiler | Compiler/automatic | Raw CSV |
|---:|---:|---:|---:|---:|---:|---:|---:|---|---:|---:|---|
| 1 | 256 | 1 | 33554432 | 0.04567 | 0.0502392 | 0.0506951 | 0.9011 [0.8957, 0.9049] | negative | 0.9060x | 0.9936x | [CSV](B256_N1/results_reist_intrinsics.csv) |
| 2 | 256 | 3 | 11184811 | 0.0161458 | 0.0171261 | 0.017158 | 0.9389 [0.9211, 0.9482] | negative | 0.9428x | 0.9968x | [CSV](B256_N3/results_reist_intrinsics.csv) |
| 3 | 256 | 8 | 4194304 | 0.00608935 | 0.0105139 | 0.0081648 | 0.7464 [0.7329, 0.7658] | negative | 0.5783x | 1.2821x | [CSV](B256_N8/results_reist_intrinsics.csv) |
| 4 | 256 | 17 | 1973791 | 0.0029094 | 0.0052364 | 0.0043118 | 0.6737 [0.6631, 0.7076] | negative | 0.5568x | 1.2361x | [CSV](B256_N17/results_reist_intrinsics.csv) |
| 5 | 256 | 64 | 524288 | 0.0017382 | 0.00291935 | 0.00235955 | 0.7028 [0.6327, 0.7724] | negative | 0.5964x | 1.2451x | [CSV](B256_N64/results_reist_intrinsics.csv) |
| 6 | 256 | 257 | 130562 | 0.00147925 | 0.00278865 | 0.00227235 | 0.6814 [0.5897, 0.7319] | negative | 0.5309x | 1.2280x | [CSV](B256_N257/results_reist_intrinsics.csv) |
| 7 | 256 | 1024 | 32768 | 0.00158035 | 0.0028365 | 0.00220895 | 0.7075 [0.5619, 0.8101] | negative | 0.5448x | 1.3098x | [CSV](B256_N1024/results_reist_intrinsics.csv) |
| 8 | 256 | 4096 | 8192 | 0.0010614 | 0.00279365 | 0.00205025 | 0.5378 [0.4811, 0.8228] | negative | 0.3750x | 1.4104x | [CSV](B256_N4096/results_reist_intrinsics.csv) |
| 9 | 256 | 16384 | 2048 | 0.00238255 | 0.00296705 | 0.00305395 | 0.8170 [0.6332, 0.9669] | negative | 0.7962x | 1.0093x | [CSV](B256_N16384/results_reist_intrinsics.csv) |
| 10 | 256 | 65536 | 512 | 0.00186585 | 0.0032892 | 0.00289225 | 0.6060 [0.3619, 0.6673] | negative | 0.5530x | 1.2161x | [CSV](B256_N65536/results_reist_intrinsics.csv) |
| 11 | 256 | 262144 | 128 | 0.00205215 | 0.00298035 | 0.00240985 | 0.8044 [0.7288, 0.8850] | negative | 0.6906x | 1.2375x | [CSV](B256_N262144/results_reist_intrinsics.csv) |
| 12 | 256 | 1000003 | 34 | 0.0043074 | 0.00450475 | 0.0042956 | 1.0144 [0.9689, 1.0395] | mixed | 0.9652x | 1.0426x | [CSV](B256_N1000003/results_reist_intrinsics.csv) |
| 13 | 256 | 4000003 | 9 | 0.0067516 | 0.00827325 | 0.0076572 | 0.8862 [0.8611, 0.9356] | negative | 0.8391x | 1.0820x | [CSV](B256_N4000003/results_reist_intrinsics.csv) |
| 14 | 257 | 1 | 33554432 | 0.0780511 | 0.0501484 | 0.0506137 | 1.5366 [1.5307, 1.5522] | positive | 1.5592x | 0.9903x | [CSV](B257_N1/results_reist_intrinsics.csv) |
| 15 | 257 | 3 | 11184811 | 0.0268125 | 0.0164288 | 0.0163119 | 1.6481 [1.6234, 1.6566] | positive | 1.6316x | 1.0101x | [CSV](B257_N3/results_reist_intrinsics.csv) |
| 16 | 257 | 8 | 4194304 | 0.0134627 | 0.0105264 | 0.008166 | 1.6404 [1.6222, 1.6836] | positive | 1.2912x | 1.2804x | [CSV](B257_N8/results_reist_intrinsics.csv) |
| 17 | 257 | 17 | 1973791 | 0.0069606 | 0.00520735 | 0.00426305 | 1.6320 [1.6199, 1.6480] | positive | 1.3318x | 1.2264x | [CSV](B257_N17/results_reist_intrinsics.csv) |
| 18 | 257 | 64 | 524288 | 0.00270445 | 0.00289225 | 0.00228055 | 1.1770 [1.1591, 1.2771] | positive | 0.9594x | 1.3041x | [CSV](B257_N64/results_reist_intrinsics.csv) |
| 19 | 257 | 257 | 130562 | 0.0025941 | 0.0028006 | 0.002236 | 1.1512 [1.1241, 1.2554] | positive | 0.9164x | 1.2502x | [CSV](B257_N257/results_reist_intrinsics.csv) |
| 20 | 257 | 1024 | 32768 | 0.0025625 | 0.00285275 | 0.0021101 | 1.2010 [1.1701, 1.2940] | positive | 0.9060x | 1.3754x | [CSV](B257_N1024/results_reist_intrinsics.csv) |
| 21 | 257 | 4096 | 8192 | 0.00261675 | 0.0027938 | 0.0019177 | 1.3477 [1.2302, 1.4004] | positive | 0.9255x | 1.4545x | [CSV](B257_N4096/results_reist_intrinsics.csv) |
| 22 | 257 | 16384 | 2048 | 0.0027668 | 0.00295305 | 0.0029247 | 0.9653 [0.9086, 1.1292] | mixed | 0.9447x | 1.0306x | [CSV](B257_N16384/results_reist_intrinsics.csv) |
| 23 | 257 | 65536 | 512 | 0.00278055 | 0.00306325 | 0.0026361 | 1.0206 [0.3901, 1.2774] | mixed | 0.9117x | 1.2277x | [CSV](B257_N65536/results_reist_intrinsics.csv) |
| 24 | 257 | 262144 | 128 | 0.0026457 | 0.00281895 | 0.00232045 | 1.1388 [1.1237, 1.1516] | positive | 0.9403x | 1.2078x | [CSV](B257_N262144/results_reist_intrinsics.csv) |
| 25 | 257 | 1000003 | 34 | 0.00460605 | 0.00443365 | 0.00436595 | 1.0461 [1.0141, 1.1069] | positive | 1.0172x | 1.0279x | [CSV](B257_N1000003/results_reist_intrinsics.csv) |
| 26 | 257 | 4000003 | 9 | 0.00753135 | 0.0075157 | 0.007155 | 1.0488 [1.0177, 1.0747] | positive | 1.0038x | 1.0358x | [CSV](B257_N4000003/results_reist_intrinsics.csv) |
| 27 | 12289 | 1 | 33554432 | 0.0836096 | 0.0507283 | 0.0500225 | 1.6702 [1.6616, 1.6763] | positive | 1.6446x | 1.0142x | [CSV](B12289_N1/results_reist_intrinsics.csv) |
| 28 | 12289 | 3 | 11184811 | 0.0278221 | 0.0197077 | 0.0189283 | 1.4769 [1.4420, 1.4975] | positive | 1.4096x | 1.0369x | [CSV](B12289_N3/results_reist_intrinsics.csv) |
| 29 | 12289 | 8 | 4194304 | 0.0149837 | 0.010541 | 0.00818545 | 1.8304 [1.8197, 1.8378] | positive | 1.4273x | 1.2732x | [CSV](B12289_N8/results_reist_intrinsics.csv) |
| 30 | 12289 | 17 | 1973791 | 0.00776415 | 0.0052086 | 0.0041889 | 1.8502 [1.8429, 1.8632] | positive | 1.4875x | 1.2419x | [CSV](B12289_N17/results_reist_intrinsics.csv) |
| 31 | 12289 | 64 | 524288 | 0.003209 | 0.0028231 | 0.0022515 | 1.4371 [1.3476, 1.4886] | positive | 1.1586x | 1.2588x | [CSV](B12289_N64/results_reist_intrinsics.csv) |
| 32 | 12289 | 257 | 130562 | 0.0031878 | 0.00279445 | 0.00215305 | 1.4798 [1.4334, 1.5136] | positive | 1.1527x | 1.2931x | [CSV](B12289_N257/results_reist_intrinsics.csv) |
| 33 | 12289 | 1024 | 32768 | 0.0031024 | 0.0028222 | 0.0019656 | 1.5781 [1.4372, 1.6332] | positive | 1.1185x | 1.4385x | [CSV](B12289_N1024/results_reist_intrinsics.csv) |
| 34 | 12289 | 4096 | 8192 | 0.0031318 | 0.0028237 | 0.0019506 | 1.5777 [1.4672, 1.6621] | positive | 1.0806x | 1.4322x | [CSV](B12289_N4096/results_reist_intrinsics.csv) |
| 35 | 12289 | 16384 | 2048 | 0.0031274 | 0.0029592 | 0.00286925 | 1.0797 [1.0516, 1.2771] | positive | 1.0703x | 1.0293x | [CSV](B12289_N16384/results_reist_intrinsics.csv) |
| 36 | 12289 | 65536 | 512 | 0.0032199 | 0.00307695 | 0.0027964 | 1.1551 [0.6670, 1.3952] | mixed | 1.0218x | 1.2200x | [CSV](B12289_N65536/results_reist_intrinsics.csv) |
| 37 | 12289 | 262144 | 128 | 0.0031424 | 0.00286755 | 0.00236485 | 1.3304 [1.3077, 1.4164] | positive | 1.1060x | 1.2062x | [CSV](B12289_N262144/results_reist_intrinsics.csv) |
| 38 | 12289 | 1000003 | 34 | 0.0044026 | 0.0043209 | 0.00435865 | 1.0513 [0.9791, 1.0745] | mixed | 1.0144x | 1.0370x | [CSV](B12289_N1000003/results_reist_intrinsics.csv) |
| 39 | 12289 | 4000003 | 9 | 0.007697 | 0.007486 | 0.00731335 | 1.0784 [1.0235, 1.0879] | positive | 1.0147x | 1.0534x | [CSV](B12289_N4000003/results_reist_intrinsics.csv) |
| 40 | 65536 | 1 | 33554432 | 0.0452503 | 0.0510065 | 0.0496923 | 0.9133 [0.9010, 0.9168] | negative | 0.8845x | 1.0302x | [CSV](B65536_N1/results_reist_intrinsics.csv) |
| 41 | 65536 | 3 | 11184811 | 0.0160052 | 0.0164023 | 0.0164122 | 0.9753 [0.9726, 0.9767] | negative | 0.9757x | 0.9987x | [CSV](B65536_N3/results_reist_intrinsics.csv) |
| 42 | 65536 | 8 | 4194304 | 0.0060553 | 0.010422 | 0.0082032 | 0.7390 [0.7311, 0.7560] | negative | 0.5813x | 1.2710x | [CSV](B65536_N8/results_reist_intrinsics.csv) |
| 43 | 65536 | 17 | 1973791 | 0.00289425 | 0.0052124 | 0.00421355 | 0.6841 [0.6757, 0.6971] | negative | 0.5560x | 1.2282x | [CSV](B65536_N17/results_reist_intrinsics.csv) |
| 44 | 65536 | 64 | 524288 | 0.0016613 | 0.00286125 | 0.0023518 | 0.6963 [0.6457, 0.7838] | negative | 0.5668x | 1.1922x | [CSV](B65536_N64/results_reist_intrinsics.csv) |
| 45 | 65536 | 257 | 130562 | 0.00144865 | 0.00278375 | 0.00226185 | 0.6583 [0.5802, 0.7137] | negative | 0.5215x | 1.2310x | [CSV](B65536_N257/results_reist_intrinsics.csv) |
| 46 | 65536 | 1024 | 32768 | 0.00159015 | 0.00282745 | 0.0022028 | 0.7308 [0.5599, 0.8085] | negative | 0.5588x | 1.3325x | [CSV](B65536_N1024/results_reist_intrinsics.csv) |
| 47 | 65536 | 4096 | 8192 | 0.0010801 | 0.002836 | 0.0019759 | 0.5459 [0.4817, 0.8667] | negative | 0.3850x | 1.4515x | [CSV](B65536_N4096/results_reist_intrinsics.csv) |
| 48 | 65536 | 16384 | 2048 | 0.00240705 | 0.00297275 | 0.00306635 | 0.7762 [0.6246, 0.9338] | negative | 0.8065x | 0.9703x | [CSV](B65536_N16384/results_reist_intrinsics.csv) |
| 49 | 65536 | 65536 | 512 | 0.0017234 | 0.00312965 | 0.00266585 | 0.6426 [0.3278, 0.7682] | negative | 0.5440x | 1.2246x | [CSV](B65536_N65536/results_reist_intrinsics.csv) |
| 50 | 65536 | 262144 | 128 | 0.00203355 | 0.00295205 | 0.00253265 | 0.8209 [0.8011, 0.8469] | negative | 0.7008x | 1.1711x | [CSV](B65536_N262144/results_reist_intrinsics.csv) |
| 51 | 65536 | 1000003 | 34 | 0.00420875 | 0.0043602 | 0.00425975 | 0.9573 [0.9417, 0.9781] | negative | 0.9389x | 1.0242x | [CSV](B65536_N1000003/results_reist_intrinsics.csv) |
| 52 | 65536 | 4000003 | 9 | 0.00641175 | 0.0079924 | 0.00723155 | 0.8792 [0.8593, 0.9243] | negative | 0.8020x | 1.0802x | [CSV](B65536_N4000003/results_reist_intrinsics.csv) |
| 53 | 65537 | 1 | 33554432 | 0.0781033 | 0.0511916 | 0.0499994 | 1.5584 [1.5514, 1.5682] | positive | 1.5235x | 1.0240x | [CSV](B65537_N1/results_reist_intrinsics.csv) |
| 54 | 65537 | 3 | 11184811 | 0.0269676 | 0.0162592 | 0.0162817 | 1.6585 [1.6522, 1.6667] | positive | 1.6611x | 0.9964x | [CSV](B65537_N3/results_reist_intrinsics.csv) |
| 55 | 65537 | 8 | 4194304 | 0.0135482 | 0.0104691 | 0.0081733 | 1.6604 [1.6474, 1.6675] | positive | 1.2948x | 1.2834x | [CSV](B65537_N8/results_reist_intrinsics.csv) |
| 56 | 65537 | 17 | 1973791 | 0.0069375 | 0.0051805 | 0.0042281 | 1.6337 [1.6206, 1.6546] | positive | 1.3347x | 1.2298x | [CSV](B65537_N17/results_reist_intrinsics.csv) |
| 57 | 65537 | 64 | 524288 | 0.00272235 | 0.00280205 | 0.0022891 | 1.2057 [1.1816, 1.2481] | positive | 0.9719x | 1.2850x | [CSV](B65537_N64/results_reist_intrinsics.csv) |
| 58 | 65537 | 257 | 130562 | 0.00258735 | 0.0028063 | 0.00218105 | 1.1652 [1.1287, 1.2271] | positive | 0.9249x | 1.2919x | [CSV](B65537_N257/results_reist_intrinsics.csv) |
| 59 | 65537 | 1024 | 32768 | 0.00260495 | 0.0028174 | 0.00203055 | 1.3168 [1.2045, 1.3928] | positive | 0.9219x | 1.3923x | [CSV](B65537_N1024/results_reist_intrinsics.csv) |
| 60 | 65537 | 4096 | 8192 | 0.00254165 | 0.00278255 | 0.00191735 | 1.3300 [1.2670, 1.4271] | positive | 0.9189x | 1.4720x | [CSV](B65537_N4096/results_reist_intrinsics.csv) |
| 61 | 65537 | 16384 | 2048 | 0.00276095 | 0.00298805 | 0.0029959 | 0.9261 [0.8816, 1.1284] | mixed | 0.9358x | 0.9936x | [CSV](B65537_N16384/results_reist_intrinsics.csv) |
| 62 | 65537 | 65536 | 512 | 0.0029224 | 0.00306615 | 0.0026699 | 1.0143 [0.5510, 1.2113] | mixed | 0.9344x | 1.0518x | [CSV](B65537_N65536/results_reist_intrinsics.csv) |
| 63 | 65537 | 262144 | 128 | 0.00271395 | 0.00282565 | 0.0023195 | 1.1732 [1.1266, 1.2314] | positive | 0.9567x | 1.2320x | [CSV](B65537_N262144/results_reist_intrinsics.csv) |
| 64 | 65537 | 1000003 | 34 | 0.004476 | 0.0045217 | 0.00429595 | 1.0023 [0.9875, 1.0871] | mixed | 1.0236x | 1.0317x | [CSV](B65537_N1000003/results_reist_intrinsics.csv) |
| 65 | 65537 | 4000003 | 9 | 0.00779 | 0.00774385 | 0.0072678 | 1.0389 [1.0104, 1.1226] | positive | 1.0027x | 1.0572x | [CSV](B65537_N4000003/results_reist_intrinsics.csv) |
| 66 | 1000000 | 1 | 33554432 | 0.0838051 | 0.051208 | 0.0501631 | 1.6694 [1.6631, 1.6797] | positive | 1.6347x | 1.0224x | [CSV](B1000000_N1/results_reist_intrinsics.csv) |
| 67 | 1000000 | 3 | 11184811 | 0.0279232 | 0.0197406 | 0.0203569 | 1.3687 [1.3523, 1.3756] | positive | 1.4223x | 0.9650x | [CSV](B1000000_N3/results_reist_intrinsics.csv) |
| 68 | 1000000 | 8 | 4194304 | 0.0197874 | 0.0105136 | 0.00823035 | 2.4097 [2.3802, 2.4143] | positive | 1.8874x | 1.2759x | [CSV](B1000000_N8/results_reist_intrinsics.csv) |
| 69 | 1000000 | 17 | 1973791 | 0.0095391 | 0.0051467 | 0.00425465 | 2.2378 [2.2244, 2.2654] | positive | 1.8468x | 1.2184x | [CSV](B1000000_N17/results_reist_intrinsics.csv) |
| 70 | 1000000 | 64 | 524288 | 0.00320745 | 0.0029409 | 0.00229185 | 1.4319 [1.3492, 1.4817] | positive | 1.1019x | 1.2692x | [CSV](B1000000_N64/results_reist_intrinsics.csv) |
| 71 | 1000000 | 257 | 130562 | 0.00266515 | 0.00280045 | 0.0021485 | 1.2741 [1.1584, 1.3148] | positive | 0.9619x | 1.3088x | [CSV](B1000000_N257/results_reist_intrinsics.csv) |
| 72 | 1000000 | 1024 | 32768 | 0.00272435 | 0.00283045 | 0.00209755 | 1.3429 [1.2474, 1.3905] | positive | 0.9571x | 1.4004x | [CSV](B1000000_N1024/results_reist_intrinsics.csv) |
| 73 | 1000000 | 4096 | 8192 | 0.00257605 | 0.00279225 | 0.0019246 | 1.3306 [1.2209, 1.5347] | positive | 0.9250x | 1.4864x | [CSV](B1000000_N4096/results_reist_intrinsics.csv) |
| 74 | 1000000 | 16384 | 2048 | 0.00283315 | 0.00295035 | 0.00305065 | 0.9984 [0.9200, 1.1607] | mixed | 0.9732x | 0.9819x | [CSV](B1000000_N16384/results_reist_intrinsics.csv) |
| 75 | 1000000 | 65536 | 512 | 0.0031319 | 0.003441 | 0.00297855 | 1.0056 [0.5867, 1.2336] | mixed | 0.9040x | 1.1842x | [CSV](B1000000_N65536/results_reist_intrinsics.csv) |
| 76 | 1000000 | 262144 | 128 | 0.002726 | 0.0028417 | 0.0023025 | 1.1969 [1.1681, 1.2325] | positive | 0.9488x | 1.2680x | [CSV](B1000000_N262144/results_reist_intrinsics.csv) |
| 77 | 1000000 | 1000003 | 34 | 0.004341 | 0.00435065 | 0.0044042 | 0.9987 [0.9808, 1.0178] | mixed | 0.9980x | 1.0247x | [CSV](B1000000_N1000003/results_reist_intrinsics.csv) |
| 78 | 1000000 | 4000003 | 9 | 0.0076221 | 0.00781885 | 0.00744555 | 1.0498 [0.9497, 1.1163] | mixed | 0.9895x | 1.0346x | [CSV](B1000000_N4000003/results_reist_intrinsics.csv) |
| 79 | 1000003 | 1 | 33554432 | 0.107472 | 0.051058 | 0.0499468 | 2.1511 [2.1414, 2.1570] | positive | 2.1027x | 1.0213x | [CSV](B1000003_N1/results_reist_intrinsics.csv) |
| 80 | 1000003 | 3 | 11184811 | 0.0373033 | 0.0207956 | 0.0214829 | 1.7391 [1.7181, 1.7476] | positive | 1.7898x | 0.9647x | [CSV](B1000003_N3/results_reist_intrinsics.csv) |
| 81 | 1000003 | 8 | 4194304 | 0.022039 | 0.0104645 | 0.00817695 | 2.6883 [2.6787, 2.6993] | positive | 2.0974x | 1.2809x | [CSV](B1000003_N8/results_reist_intrinsics.csv) |
| 82 | 1000003 | 17 | 1973791 | 0.0105255 | 0.00514315 | 0.00424915 | 2.4908 [2.4496, 2.5058] | positive | 2.0499x | 1.2050x | [CSV](B1000003_N17/results_reist_intrinsics.csv) |
| 83 | 1000003 | 64 | 524288 | 0.0038272 | 0.00288235 | 0.0022598 | 1.6919 [1.6172, 1.8375] | positive | 1.3170x | 1.2886x | [CSV](B1000003_N64/results_reist_intrinsics.csv) |
| 84 | 1000003 | 257 | 130562 | 0.0035531 | 0.0027669 | 0.00208185 | 1.7131 [1.5396, 1.7971] | positive | 1.2785x | 1.3431x | [CSV](B1000003_N257/results_reist_intrinsics.csv) |
| 85 | 1000003 | 1024 | 32768 | 0.0035623 | 0.0028242 | 0.00199715 | 1.7360 [1.6485, 1.8217] | positive | 1.2584x | 1.4116x | [CSV](B1000003_N1024/results_reist_intrinsics.csv) |
| 86 | 1000003 | 4096 | 8192 | 0.0036084 | 0.002768 | 0.001921 | 1.8757 [1.8195, 2.0109] | positive | 1.3015x | 1.4777x | [CSV](B1000003_N4096/results_reist_intrinsics.csv) |
| 87 | 1000003 | 16384 | 2048 | 0.0037245 | 0.00297625 | 0.00288595 | 1.3573 [1.1899, 1.5179] | positive | 1.2377x | 1.0602x | [CSV](B1000003_N16384/results_reist_intrinsics.csv) |
| 88 | 1000003 | 65536 | 512 | 0.00391445 | 0.00332635 | 0.0027035 | 1.3927 [0.5474, 1.7567] | mixed | 1.2113x | 1.1984x | [CSV](B1000003_N65536/results_reist_intrinsics.csv) |
| 89 | 1000003 | 262144 | 128 | 0.00363085 | 0.00298905 | 0.00239915 | 1.5283 [1.5065, 1.5918] | positive | 1.2323x | 1.2439x | [CSV](B1000003_N262144/results_reist_intrinsics.csv) |
| 90 | 1000003 | 1000003 | 34 | 0.0046191 | 0.00454545 | 0.00435075 | 1.0771 [1.0209, 1.1410] | positive | 1.0475x | 1.0601x | [CSV](B1000003_N1000003/results_reist_intrinsics.csv) |
| 91 | 1000003 | 4000003 | 9 | 0.0080441 | 0.00765335 | 0.00752765 | 1.0709 [1.0437, 1.1061] | positive | 1.0582x | 0.9956x | [CSV](B1000003_N4000003/results_reist_intrinsics.csv) |
| 92 | 1000000007 | 1 | 33554432 | 0.107158 | 0.0509082 | 0.0500465 | 2.1419 [2.1363, 2.1510] | positive | 2.1055x | 1.0183x | [CSV](B1000000007_N1/results_reist_intrinsics.csv) |
| 93 | 1000000007 | 3 | 11184811 | 0.0371541 | 0.0196978 | 0.0199435 | 1.8577 [1.8385, 1.8844] | positive | 1.8840x | 0.9841x | [CSV](B1000000007_N3/results_reist_intrinsics.csv) |
| 94 | 1000000007 | 8 | 4194304 | 0.0220026 | 0.0104864 | 0.0081936 | 2.6785 [2.6260, 2.6949] | positive | 2.0947x | 1.2796x | [CSV](B1000000007_N8/results_reist_intrinsics.csv) |
| 95 | 1000000007 | 17 | 1973791 | 0.0107066 | 0.0052328 | 0.00431795 | 2.4891 [2.4520, 2.5129] | positive | 2.0428x | 1.2160x | [CSV](B1000000007_N17/results_reist_intrinsics.csv) |
| 96 | 1000000007 | 64 | 524288 | 0.00379365 | 0.00277815 | 0.00222185 | 1.9123 [1.6693, 1.9600] | positive | 1.3809x | 1.2745x | [CSV](B1000000007_N64/results_reist_intrinsics.csv) |
| 97 | 1000000007 | 257 | 130562 | 0.00346915 | 0.00282535 | 0.00219315 | 1.5973 [1.4342, 1.7183] | positive | 1.2413x | 1.2956x | [CSV](B1000000007_N257/results_reist_intrinsics.csv) |
| 98 | 1000000007 | 1024 | 32768 | 0.0035702 | 0.00283325 | 0.0020491 | 1.7643 [1.6443, 1.8290] | positive | 1.2601x | 1.3977x | [CSV](B1000000007_N1024/results_reist_intrinsics.csv) |
| 99 | 1000000007 | 4096 | 8192 | 0.00377115 | 0.0029082 | 0.00212485 | 1.7636 [1.6666, 1.8281] | positive | 1.2926x | 1.3787x | [CSV](B1000000007_N4096/results_reist_intrinsics.csv) |
| 100 | 1000000007 | 16384 | 2048 | 0.00368805 | 0.0028218 | 0.00244515 | 1.5421 [1.4298, 1.7194] | positive | 1.2996x | 1.1577x | [CSV](B1000000007_N16384/results_reist_intrinsics.csv) |
| 101 | 1000000007 | 65536 | 512 | 0.0039596 | 0.003071 | 0.00275775 | 1.3852 [0.7111, 1.5693] | mixed | 1.2549x | 1.1800x | [CSV](B1000000007_N65536/results_reist_intrinsics.csv) |
| 102 | 1000000007 | 262144 | 128 | 0.00393005 | 0.0030442 | 0.0026276 | 1.4631 [1.3946, 1.5432] | positive | 1.2586x | 1.1531x | [CSV](B1000000007_N262144/results_reist_intrinsics.csv) |
| 103 | 1000000007 | 1000003 | 34 | 0.0047162 | 0.004587 | 0.0045502 | 1.0527 [1.0305, 1.0700] | positive | 1.0337x | 1.0171x | [CSV](B1000000007_N1000003/results_reist_intrinsics.csv) |
| 104 | 1000000007 | 4000003 | 9 | 0.00803975 | 0.00839945 | 0.007674 | 1.0832 [0.9929, 1.1101] | mixed | 1.0021x | 1.0957x | [CSV](B1000000007_N4000003/results_reist_intrinsics.csv) |
| 105 | 2147483647 | 1 | 33554432 | 0.0955178 | 0.0510597 | 0.0502376 | 1.9019 [1.8929, 1.9168] | positive | 1.8674x | 1.0164x | [CSV](B2147483647_N1/results_reist_intrinsics.csv) |
| 106 | 2147483647 | 3 | 11184811 | 0.0340526 | 0.0163494 | 0.0164929 | 2.0630 [2.0424, 2.0733] | positive | 2.0805x | 0.9896x | [CSV](B2147483647_N3/results_reist_intrinsics.csv) |
| 107 | 2147483647 | 8 | 4194304 | 0.0158112 | 0.0104624 | 0.0082429 | 1.9146 [1.9015, 1.9226] | positive | 1.5063x | 1.2718x | [CSV](B2147483647_N8/results_reist_intrinsics.csv) |
| 108 | 2147483647 | 17 | 1973791 | 0.0084473 | 0.00515745 | 0.0042156 | 2.0097 [1.9794, 2.0275] | positive | 1.6378x | 1.2299x | [CSV](B2147483647_N17/results_reist_intrinsics.csv) |
| 109 | 2147483647 | 64 | 524288 | 0.00346605 | 0.00273845 | 0.00219005 | 1.6264 [1.5789, 1.6776] | positive | 1.2697x | 1.2586x | [CSV](B2147483647_N64/results_reist_intrinsics.csv) |
| 110 | 2147483647 | 257 | 130562 | 0.00357355 | 0.00271485 | 0.0021821 | 1.6291 [1.5943, 1.8281] | positive | 1.2930x | 1.3859x | [CSV](B2147483647_N257/results_reist_intrinsics.csv) |
| 111 | 2147483647 | 1024 | 32768 | 0.00340325 | 0.0028018 | 0.00199835 | 1.7105 [1.6234, 1.7440] | positive | 1.2039x | 1.4210x | [CSV](B2147483647_N1024/results_reist_intrinsics.csv) |
| 112 | 2147483647 | 4096 | 8192 | 0.0037751 | 0.00287885 | 0.00219305 | 1.6922 [1.6137, 1.8441] | positive | 1.3013x | 1.3265x | [CSV](B2147483647_N4096/results_reist_intrinsics.csv) |
| 113 | 2147483647 | 16384 | 2048 | 0.00368475 | 0.0028148 | 0.0023451 | 1.5393 [1.4356, 1.7309] | positive | 1.2983x | 1.2037x | [CSV](B2147483647_N16384/results_reist_intrinsics.csv) |
| 114 | 2147483647 | 65536 | 512 | 0.00402425 | 0.0031568 | 0.0026598 | 1.5160 [0.5411, 1.7001] | mixed | 1.2301x | 1.2502x | [CSV](B2147483647_N65536/results_reist_intrinsics.csv) |
| 115 | 2147483647 | 262144 | 128 | 0.0036909 | 0.00288115 | 0.00232425 | 1.6270 [1.5817, 1.6573] | positive | 1.2803x | 1.2550x | [CSV](B2147483647_N262144/results_reist_intrinsics.csv) |
| 116 | 2147483647 | 1000003 | 34 | 0.00480635 | 0.00471135 | 0.0046954 | 1.0332 [1.0115, 1.0712] | positive | 1.0184x | 0.9995x | [CSV](B2147483647_N1000003/results_reist_intrinsics.csv) |
| 117 | 2147483647 | 4000003 | 9 | 0.00894775 | 0.00802525 | 0.0079207 | 1.1481 [1.1251, 1.1688] | positive | 1.0705x | 1.0773x | [CSV](B2147483647_N4000003/results_reist_intrinsics.csv) |

## Scope

This is a prepared, repeated modular-addition microbenchmark. It does not establish a universal modulo, cryptographic, or end-to-end application speedup. Power-of-two controls and small calls are intentionally retained even when they favor compiler-optimized `%`.
