# Einfache REIST-API für C++-Entwickler

Die öffentliche API kapselt die zentrierte Restdarstellung vollständig. Eine
Anwendung gibt nur den positiven Modulus `B` und ihre normalen Ganzzahlen an;
Ergebnisse werden über `remainder()` oder `residues()` wieder als gewöhnliche
Reste im Bereich `[0, B)` geliefert.

## Einzelne Werte

```cpp
#include "reist_intrinsics.hpp"

#include <cstdint>

reist::modulus_i32 mod(1'000'003);

const std::int32_t result = mod.add(17, 29).remainder();
```

Für einen wiederholt verwendeten Zustand kann die Normalisierung einmalig
erfolgen:

```cpp
auto state = mod.value(0);
const auto increment = mod.value(3);

state = mod.add(state, increment);
const std::int32_t result = state.remainder();
```

## Arrays und automatische Backend-Wahl

```cpp
#include "reist_intrinsics.hpp"

#include <array>
#include <cstdint>

reist::modulus_i32 mod(257);
const std::array<std::int32_t, 4> states{1, 2, 3, 4};
const std::array<std::int32_t, 4> increments{5, 6, 7, 8};

auto prepared_states = mod.prepare(states);
const auto prepared_increments = mod.prepare(increments);

mod.add_inplace(prepared_states, prepared_increments);
const auto results = mod.residues(prepared_states);
```

Der Standardmodus `automatic` verwendet AVX2 beziehungsweise AArch64 NEON,
wenn das Backend gebaut wurde und auf dem laufenden System sicher verfügbar
ist. Andernfalls läuft derselbe Aufruf über den portablen C++-Kern. Anwendungen
müssen weder ISA-Header einbinden noch CPU-Merkmale selbst prüfen.

REIST selbst ist dabei kein SIMD- oder NEON-Verfahren. AVX2 und NEON sind
optionale Implementierungen des REIST-Arraykerns; die portable Variante und
die öffentliche API funktionieren auch ohne sie.

`compiler_auto` und `explicit_simd` sind absichtlich sichtbare Diagnosemodi.
Sie dienen Tests sowie der Assembly- und Backenddiagnose; Anwendungscode sollte
den Standardwert `automatic` beibehalten.

## Einbinden mit CMake

Wenn das Repository per `add_subdirectory` eingebunden ist:

```cmake
target_link_libraries(meine_anwendung PRIVATE reist::intrinsics)
```

Die API benötigt C++20. Zulässige Moduli liegen zwischen `1` und
`INT32_MAX`. Ungültige Moduli, gemischte Modulus-Kontexte und unterschiedliche
Arraygrößen werden kontrolliert als C++-Exception gemeldet.

Ein bewusst rein portabler Build ist mit
`-DREIST_ENABLE_EXPLICIT_SIMD=OFF` möglich; die Anwendungs-API bleibt dabei
unverändert.

## Konstant optimiertes `%` gegen die REIST-API messen

Der Diagnosebenchmark muss optimiert gebaut werden:

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --target bench_reist_intrinsics
./build/bench_reist_intrinsics
```

Die Hauptbaseline verwendet keine absichtlich schwer optimierbare
Runtime-Division mehr. `B` ist in jedem Baseline-Kern eine Compile-time-
Templatekonstante. Der Compiler darf `%` daher vollständig durch Masken,
Multiplikation mit Magic Constants, Shifts, Unrolling oder Vektorisierung
ersetzen. Die konstante Baseline wird in einem portablen, AVX2- oder NEON-TU
mit derselben ISA-Optimierungsmöglichkeit wie der jeweilige REIST-Pfad gebaut.

Gemessen werden drei Pfade mit derselben Anzahl modularer Arrayadditionen:

| Pfad | Bedeutung |
|---|---|
| `compiler_const_percent` | gewöhnliche Reste in `[0,B)` und voll optimiertes konstantes C++-`%` |
| `reist_compiler_auto` | zentrierte Reste und der reine, vom Compiler optimierbare C++-Korrekturpfad |
| `reist_automatic` | öffentliche Default-Policy mit sicherer automatischer Wahl des expliziten AVX2-/NEON-Backends oder portablem Fallback |

Der Benchmark gibt drei Quotienten aus:

- `constant % / REIST automatic`: über `1,0` bedeutet, dass `automatic`
  schneller war;
- `constant % / REIST compiler_auto`: über `1,0` bedeutet, dass
  `compiler_auto` schneller war;
- `REIST compiler_auto / automatic`: über `1,0` bedeutet, dass `automatic`
  schneller war.

Standardmäßig werden zwölf Trials ausgeführt. Dabei kommen alle sechs
Reihenfolgen der drei Pfade jeweils zweimal vor. Ausgegeben werden Median, Q1,
Q3 und IQR. Ein vollständig oberhalb von `1,0` liegendes Zentralintervall wird
beschreibend als positiv, ein vollständig darunter liegendes als negativ und
ein `1,0` schneidendes als gemischt bezeichnet. Es gibt keine
Performance-Schwelle und keinen Geschwindigkeits-Pass/Fail-Test. Auch Verluste,
gemischte Ergebnisse, kleine Arrays und Negativkontrollen bleiben erhalten.

Die zeitgesteuerten Compile-time-Moduli sind fest vorgegeben:

```text
256, 257, 12289, 65536, 65537,
1000000, 1000003, 1000000007, 2147483647 (INT32_MAX)
```

`256` und `65536` sind absichtliche Zweierpotenz-Negativkontrollen, bei denen
ein optimierender Compiler `%` besonders günstig als Maske ausdrücken kann.
Ein anderer Modulus wird abgelehnt und nicht still auf Runtime-`%` umgestellt.

Normalisierung und `prepare`, Kopien vor jedem Trial, Rückwandlung mit
`remainder()`/`residues()` und Validierung liegen außerhalb des gemessenen
Bereichs. Gemessen wird somit der vorbereitete Steady State. Eine Anwendung,
die häufig neu vorbereitet, nach jedem Schritt konvertiert oder nur wenige
Additionen ausführt, kann einschließlich dieser End-to-End-Kosten ein anderes
Ergebnis erhalten. Der Benchmark belegt weder eine allgemeine Beschleunigung
beliebiger `%`-Ausdrücke noch eine End-to-End-Beschleunigung eines
kryptographischen oder anderen vollständigen Anwendungsfalls.

Die API ist eine normale C++-Bibliothek mit optionalen ISA-Intrinsics. Sie fügt
dem Compiler kein Builtin und der CPU keine neue Maschineninstruktion hinzu;
sie veranlasst den Compiler insbesondere nicht, fremde `%`-Ausdrücke
automatisch in REIST-Zustände umzuschreiben. Historische Resultate mit
Runtime-`B` im klassischen `%`-Pfad bleiben Provenienzdaten, sind aber kein
Beleg für einen Vorteil gegenüber der neuen, konstanten und voll optimierten
`%`-Baseline.

Ein einzelner Fall lässt sich explizit aufrufen:

```bash
./build/bench_reist_intrinsics --elements 1000003 --repetitions 256 --modulus 1000003 --trials 12
```

`--trials` muss mindestens sechs und ein Vielfaches von sechs sein.

## Automatischer Größen- und Modulus-Sweep

Der vollständige, vorab festgelegte Sweep wird durch ein Python-3.10+-Skript
ohne externe Pakete ausgeführt:

```bash
make intrinsic-scaling
```

Alternativ kann das Skript mit explizitem Binary und Zielverzeichnis gestartet
werden:

```bash
python scripts/run_reist_intrinsic_scaling.py \
  --binary build/bench_reist_intrinsics \
  --result-dir build/intrinsic-scaling-full
```

Bei einem Multi-Config-Build unter Windows ist normalerweise
`build/Release/bench_reist_intrinsics.exe` anzugeben. Das Ergebnisverzeichnis
muss neu oder leer sein, damit verschiedene Läufe nicht vermischt werden.

Der Standardsweep umfasst alle neun Moduli und die Größen
`1,3,8,17,64,257,1024,4096,16384,65536,262144,1000003,4000003`. Das Skript
wählt `repetitions = ceil(target_updates/elements)` für mindestens 8.388.608
Lane-Updates pro Implementierung und Trial und verwendet zwölf Trials. Ein
kleinerer Diagnose-Sweep kann beispielsweise so gestartet werden:

```bash
python scripts/run_reist_intrinsic_scaling.py \
  --binary build/bench_reist_intrinsics \
  --result-dir build/intrinsic-scaling-check \
  --sizes 17,257,4096 \
  --moduli 256,257,1000003 \
  --target-updates 1048576 \
  --trials 12
```

`--moduli` akzeptiert weiterhin nur den festen Compile-time-Katalog. Für jeden
angeforderten Punkt entstehen ein eigenes Verzeichnis, stdout/stderr und eine
validierte Schema-3-CSV. Zusätzlich schreibt das Skript
`SCALING_RESULTS.csv` und `SCALING_SUMMARY.md`. Fehlerhafte Punkte werden
aufgeführt und führen zu einem Fehlercode; langsame REIST-Punkte werden nicht
ausgefiltert und lösen für sich keinen Fehler aus.

## Laufzeitkomplexität über N untersuchen

Der Durchsatz-Sweep aus dem vorigen Abschnitt hält die Zahl der Lane-Updates
annähernd konstant, indem er die Wiederholungen mit wachsendem `N` reduziert.
Er ist deshalb absichtlich **nicht** für eine Big-O-Auswertung geeignet. Der
separate Complexity-Runner hält stattdessen `repetitions` für jede Größe fest:

```bash
make intrinsic-complexity
```

Ein großer Lauf bis 67.108.864 Elemente kann explizit so gestartet werden:

```bash
python scripts/run_reist_intrinsic_complexity.py \
  --binary build/bench_reist_intrinsics \
  --result-dir build/intrinsic-complexity-large \
  --sizes 16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864 \
  --moduli 256,12289,1000003,2147483647 \
  --repetitions 16 \
  --trials 12 \
  --bootstrap-iterations 2000
```

`--affinity-cpu N` kann den Runner und seine Kindprozesse zusätzlich an einen
logischen Prozessor binden. Das größte Beispiel benötigt in der derzeitigen
Benchmark-Implementierung ungefähr `12 × N × sizeof(int32_t)`, also rund
3 GiB reine Array-Daten. Das Zielverzeichnis muss wiederum neu oder leer sein.

Aus der Schleifenstruktur folgt für alle drei Kerne bei einem festen
32-Bit-Wortmodell eine Laufzeit von `Θ(N × R)`: Jede der `R` Wiederholungen
besucht alle `N` Elemente. AVX2 oder NEON verarbeitet eine konstante Anzahl
Lanes gleichzeitig und ändert daher den konstanten Faktor, nicht die
asymptotische Klasse. Bei dem festgehaltenen `R` des Complexity-Runners ist
die erwartete Skalierung somit `Θ(N)`; der gleichzeitig gehaltene
Array-Speicher ist ebenfalls `Θ(N)`.

`COMPLEXITY_REPORT.md` ergänzt diese strukturelle Aussage durch
Log-Log-Regressionen, 95-%-Bootstrap-Intervalle, `T(2N)/T(N)`, lokale
Exponenten und ns/Update. Die gemessene Steigung ist kein mathematischer
Beweis: Besonders ein Sweep über eine Cache-Grenze kann auf einem endlichen
Intervall vorübergehend `p > 1` ergeben. Im großen, den Last-Level-Cache
überschreitenden und damit speicherbandbreitengeprägten Bereich sind ein
Verdopplungsquotient nahe 2, ein lokaler Exponent nahe 1 und ungefähr konstante
ns/Update die relevanten gemeinsamen Indizien für lineares Verhalten. Eine
harte Speicherbandbreiten-Limitierung wird ohne Hardware-Counter nicht
behauptet.

Die vollständigen x86-Läufe vom 03.08.2026 sind mitsamt allen Rohfällen
archiviert:

- [Archiv- und Provenienzindex](../tests/results/x86/20260803_REIST_INTRINSIC_BENCHMARKS.md),
- [117-Fälle-Skalierungsmatrix](../tests/results/x86/20260803_130613_320928_REIST_INTRINSIC_SCALING/SCALING_SUMMARY.md),
- [52-Fälle-Komplexitätsmatrix](../tests/results/x86/20260803_135345_977433_REIST_INTRINSIC_COMPLEXITY/COMPLEXITY_REPORT.md).

Diese Schema-3-Artefakte sind validierte Entwicklerdiagnosen und kein achtes
Paper-Benchmark. Beim Archivieren eines neuen Laufs muss das gesamte
Zeitstempelverzeichnis mit Report, konsolidierter CSV sowie allen
Fallverzeichnissen nach `tests/results/<architektur>/` kopiert werden.

## Erzeugten Compiler-Code prüfen

Die Baseline-Kerne haben stabile C-Symbole und können getrennt für den
portablen und den AVX2-TU untersucht werden:

```bash
ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_portable$' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_portable.cpp

ARTIFACT_KERNELS='^compiler_const_percent_[[:digit:]]+_avx2$' \
ARTIFACT_CXXFLAGS='-Isrc -Iinclude -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -O3 -DNDEBUG -mavx2' \
tools/check_compiler_artifacts.sh src/bench_reist_intrinsics_const_avx2.cpp
```

Beide Dateien instanziieren dieselben konstanten C++-Templates. Die
unterschiedlichen ISA-Flags des jeweiligen Translation Units sind die bewusst
veränderte Größe.
