# Kleine Beispiele für den Disassembler

Diese neun Dateien enthalten jeweils nur drei exportierte Funktionen. Kein
`main`, keine Messschleife um den Test, keine Ausgabe, Speicherallokation oder
Zufallszahlenerzeugung. Der reine Beispielbau **linkt kein Executable**.
Die Additionsarithmetik kommt aus `src/paper_addition.hpp`, die allgemeinen
REIST-Reste und Divisionen aus `include/reist_mod.hpp`. Bei `O0` können zusätzlich
nicht eingebettete Hilfsfunktionen erscheinen; bei den allgemeinen Divisionen
bleibt die Fehlerbehandlung der Bibliothek sichtbar.

| Datei | Funktionen | Vergleich |
|---|---|---|
| `01_runtime.cpp` | `runtime_percent`, `runtime_bounded`, `runtime_centered` | eine Addition, Modul als Parameter |
| `02_constant_257.cpp` | `constant_percent`, `constant_bounded`, `constant_centered` | eine Addition, Modul 257 |
| `03_power_of_two_256.cpp` | `power2_percent`, `power2_bounded`, `power2_centered` | eine Addition, Modul 256 als Negativkontrolle |
| `04_serial_257.cpp` | `serial_percent`, `serial_bounded`, `serial_centered` | eine abhängige Kette über ein Schrittarray, Modul 257 |
| `05_array_257.cpp` | `array_percent`, `array_bounded`, `array_centered` | unabhängige Updates eines Zustandsarrays, Modul 257 |
| `06_signed_remainders_runtime.cpp` | `signed_remainder_runtime`, `euclidean_remainder_runtime`, `reist_remainder_runtime` | beliebige 64-Bit-Eingaben, Modul als Parameter |
| `07_signed_remainders_257.cpp` | entsprechende `*_remainder_constant` | beliebige 64-Bit-Eingaben, Modul 257 |
| `08_division_runtime.cpp` | `signed_division_runtime`, `euclidean_division_runtime`, `reist_division_runtime` | Quotient und Rest zusammen, Modul als Parameter |
| `09_division_257.cpp` | entsprechende `*_division_constant` | Quotient und Rest zusammen, Modul 257 |

## Optimierungsstufen und negative Reste testen

```sh
python scripts/run_disassembly_matrix.py
python scripts/run_disassembly_matrix.py --compiler clang++ --output build/disassembly-clang
```

Ein Aufruf erzeugt die Profile `O0`, `O1`, `O2`, `O3`, `Os` (jeweils skalar)
und `O3_auto` (Auto-Vektorisierung erlaubt). Loop-Unrolling bleibt ausgeschaltet,
LTO wird nicht verwendet. Mit `--native` gilt zusätzlich `-march=native` für
alle Profile; ohne diese Option gilt das ISA-Standardziel des Compilers.
Der Compiler muss ausführbare Programme für den aktuellen Rechner erzeugen.
Reine Cross-Compiler sind mit dem einzelnen Build-Skript weiter verwendbar.

Einstieg ist `build/disassembly-matrix/REPORT.md`. Es verlinkt die vollständigen
Objektlistings und einzelne Funktionen unter `<Profil>/functions/`. Zusätzlich:

- `SUMMARY.csv`: Instruktions-, DIV-, Aufruf- und bedingte Sprungzahlen je Funktion;
- `<Profil>/remainder_samples.csv`: tatsächlich geprüfte Quotienten und Reste,
  einschließlich negativer Eingaben und `INT64_MIN`/`INT64_MAX`;
- `<Profil>/correctness.txt`: Ergebnis der Rechentests;
- Manifeste mit Compiler, Optionen, Befehlen und Quell-/Artefakt-Hashes.

Jedes Profil linkt **dieselben disassemblierten `.o`-Dateien** vorübergehend
gegen einen separaten Testtreiber. Dieser prüft alle 27 Funktionen, darunter
548.819 Eingabe-/Modulpaarungen der allgemeinen Division pro Profil, ungerade
und gerade Moduli, ungültige Moduli sowie die bisherigen Additions- und
Schleifentests. Das Test-Executable wird anschließend entfernt. Die 170
Beispielzeilen müssen außerdem über alle Profile identisch sein.
Die CI erstellt diese Matrix mit GCC und Clang und lädt sie als Artefakte hoch.

Die Instruktionszahlen schließen Alignment ein und erfassen ausschließlich
den benannten Funktionskörper, nicht aufgerufene Helfer oder ausgelagerte
Fehlerpfade. Besonders bei `O0` muss man den Aufrufen und Relokationen im
vollständigen Listing folgen. Null lokale DIV-Instruktionen beweisen dort
keine divisionsfreie Ausführung. Die Zählklassifikation unterstützt x86 und
AArch64; andere Zielarchitekturen bitte anhand der Listings beurteilen.

Eine druckbare Anleitung mit einem geprüften GCC-Beispiel liegt unter
[REIST-Compiler-Vergleich.pdf](../../docs/papers/REIST-Compiler-Vergleich.pdf).

## Sofort ausprobieren

Mit Python >= 3.10, GCC oder Clang und passendem GNU/LLVM `objdump`:

```sh
python scripts/build_disassembly_examples.py
```

Unter `build/disassembly-examples/` entstehen pro Beispiel:

- `.s`: lesbare Compiler-Ausgabe, auf x86 standardmäßig Intel-Syntax;
- `.o`: kleine Objektdatei für den Disassembler der eigenen Wahl;
- `.disasm.txt`: bereits erzeugtes Disassembly mit Symbolnamen und Relokationen.

Das Manifest enthält Compiler-Version, Target, Optionen, Befehle, Dateigrößen
und SHA-256-Hashes. Das Ausgabeverzeichnis muss neu oder leer sein, damit kein
alter Compilerstand mit neuen Ergebnissen vermischt wird.

Im lokalen GCC-15.2-x86-64-Lauf vom 14.11.2026 sind die neun `O2`-Objektdateien
961 bis 3681 Bytes groß, einschließlich COFF-Metadaten und Fehlerbehandlung.
Über die gesamte Matrix reicht die Größe von 945 bis 6112 Bytes. Andere
Compiler und Objektformate können andere Größen liefern.

Wer bereits CMake verwendet, kann alternativ nur die Objektbibliothek bauen:

```sh
cmake --build build --target reist_disassembly_examples
```

Dabei gelten die Optionen der vorhandenen CMake-Konfiguration. Die
Objektdateien liegen unter `CMakeFiles/reist_disassembly_examples.dir/`;
das Python-Skript liefert zusätzlich die direkt lesbaren Listings und
deaktiviert standardmäßig die Vektorisierung.

Ein einzelnes Beispiel oder ein anderer Compiler:

```sh
python scripts/build_disassembly_examples.py --example 02_constant_257 --output build/asm-257
python scripts/build_disassembly_examples.py --compiler clang++ --objdump llvm-objdump --output build/asm-clang
```

Für den übersichtlichen Standardvergleich gelten `-O2`, abgeschaltete
Auto-Vektorisierung und kein Loop-Unrolling. Alle drei Methoden erhalten
identische Optionen. Die Vektorisierung lässt sich gesondert untersuchen:

```sh
python scripts/build_disassembly_examples.py --example 05_array_257 --optimization O3 --vectorize --native --output build/asm-array-vector
```

`--vectorize` erlaubt die Compileroptimierung, garantiert aber kein SIMD.
`--native` bindet die Ausgabe an den aktuellen Prozessor. Auf ARM wird die
native Assemblersyntax verwendet; ein Cross-Compiler benötigt das passende
Cross-`objdump`. Für x86 ist auch `--syntax att` verfügbar.

## Ohne Python oder Buildsystem

Aus dem Repository-Hauptverzeichnis, beispielsweise mit GCC auf x86:

```sh
g++ -std=c++20 -O2 -fno-tree-vectorize -masm=intel -S examples/disassembly/02_constant_257.cpp -o build/constant257.s
g++ -c build/constant257.s -o build/constant257.o
objdump -d -r -C -M intel --no-show-raw-insn build/constant257.o
```

Für genau eine Funktion mit GNU objdump:

```sh
objdump -d -M intel --disassemble=constant_centered build/constant257.o
```

Die `.o`-Datei kann auch direkt in einem Disassembler mit ELF-/COFF-Unterstützung
geöffnet werden. Weil keine Laufzeitbibliotheken eingebunden sind, bleiben nur
die Rechenfunktionen, gegebenenfalls Hilfsfunktionen, Verweise auf externe
Fehlerbehandlung, Alignment und Objekt-Metadaten übrig. Exception- und
Unwind-Unterstützung bleiben für die öffentliche REIST-API eingeschaltet.

## Was man sinnvoll vergleichen kann

`percent` und `bounded` erwarten nicht-negative Operanden in `[0,B)`.
`centered` erwartet bereits zentrierte Operanden in
`[-floor(B/2), ceil(B/2))`. Für Laufzeitmoduli gilt `1 <= B <= INT32_MAX`.
Die zwei 32-Bit-Darstellungen erlauben unter diesem Vertrag überlauffreie
Summen. Normalisierung und Fehlerbehandlung sind bewusst nicht enthalten.
Für dieselbe Restklasse können die Eingabebits beider Darstellungen verschieden
sein. Ergebnisse sind nach Umrechnung modulo B zu vergleichen.

Das gilt für Beispiele 01-05. Beispiele 06-09 erlauben dagegen jeden `int64_t`
als Dividend und jedes positive `int64_t` als Modul. Die Laufzeitvarianten
prüfen alle dieselbe Bedingung `B > 0` und werfen sonst `std::invalid_argument`;
dadurch gelangt auch `INT64_MIN / -1` niemals zur Maschinen-Division. Die
Divisionsvarianten schreiben in zwei verschiedene, gültige Ausgabezeiger.

| Dividend | Modul | C++ `(q,r)` | Euklidisch `(q,r)` | REIST `(q,r)` |
|---:|---:|---:|---:|---:|
| -260 | 257 | (-1,-3) | (-2,254) | (-1,-3) |
| -129 | 257 | (0,-129) | (-1,128) | (-1,128) |
| 129 | 257 | (0,129) | (0,129) | (1,-128) |
| 128 | 256 | (0,128) | (0,128) | (1,-128) |

Alle Paare erfüllen `T = q*B + r`, haben aber unterschiedliche Restkonventionen.
Der allgemeine REIST-Pfad berechnet zunächst eine Reduktion und korrigiert sie;
die divisionsarme Addition mit vorbereitetem Zustand ist ein eigener Fall.

Im lokalen GCC-15.2-Lauf verwendet die konstante REIST-Division durch 257 bei
`O2` eine Multiplikation mit einer Kehrwertkonstante und Shifts, bei `Os` dagegen
`idiv`. Die Laufzeitdivision verwendet bei `O2` ein `idiv` für Quotient und Rest
zusammen. Sogar eine Hilfsdivision durch zwei zur Berechnung der Grenzen kann
bei `Os` als `idiv` erscheinen. Deshalb immer die Operanden ansehen: Ein
DIV-Zähler allein sagt nicht, ob der Compiler gerade durch B oder durch zwei teilt.

Die seriellen Funktionen erhalten ihren Anfangszustand als Parameter und geben
ihn bei Länge null unverändert zurück. Die Arrayfunktionen aktualisieren
`state` in-place; bei Länge null greifen sie auf keinen Zeiger zu. Bei positiver
Länge müssen beide Arrays ausreichend groß sein. Die Beispiele verwenden kein
`restrict`; Compiler dürfen gegebenenfalls Laufzeitprüfungen für Aliasfreiheit
erzeugen. Für die Vergleichslast separate, nicht überlappende Arrays verwenden.

Interessant sind Division versus Konstantenreduktion, eine statt zwei
Grenzbedingungen, abhängige Schleifen versus unabhängige Lanes sowie Maskierung
bei Zweierpotenzen. Sprünge, Conditional Moves und konkrete Instruktionen sind
Compilerentscheidungen. Aus weniger Assemblerzeilen folgt weder automatisch
eine geringere Laufzeit noch konstantes Zeitverhalten.

Die CTest-Prüfung `reist.examples.disassembly` prüft alle 27 Funktionen gegen
eine breite Referenz einschließlich Randwerten und leeren Schleifen. Ihr
separates Test-Executable gehört nicht zu den Disassembler-Artefakten.
