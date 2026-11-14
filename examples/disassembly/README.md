# Kleine Beispiele für den Disassembler

Diese fünf Dateien enthalten jeweils nur drei exportierte Funktionen. Kein
`main`, keine Messschleife um den Test, keine Ausgabe, Speicherallokation oder
Zufallszahlenerzeugung. Es wird **kein Executable gelinkt**. Die Arithmetik
kommt direkt aus `src/paper_addition.hpp`, also aus den neuen Paper-Benchmarks.

| Datei | Funktionen | Vergleich |
|---|---|---|
| `01_runtime.cpp` | `runtime_percent`, `runtime_bounded`, `runtime_centered` | eine Addition, Modul als Parameter |
| `02_constant_257.cpp` | `constant_percent`, `constant_bounded`, `constant_centered` | eine Addition, Modul 257 |
| `03_power_of_two_256.cpp` | `power2_percent`, `power2_bounded`, `power2_centered` | eine Addition, Modul 256 als Negativkontrolle |
| `04_serial_257.cpp` | `serial_percent`, `serial_bounded`, `serial_centered` | eine abhängige Kette über ein Schrittarray, Modul 257 |
| `05_array_257.cpp` | `array_percent`, `array_bounded`, `array_centered` | unabhängige Updates eines Zustandsarrays, Modul 257 |

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

Im lokalen GCC-15.2-x86-Lauf sind die fünf Standard-Objektdateien jeweils
671 bis 905 Bytes groß, einschließlich COFF-Metadaten. Das Arraybeispiel mit
`-O3 --vectorize --native` ergibt hier 2505 Bytes. Andere Compiler und
Objektformate können andere Größen liefern.

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
die Rechenfunktionen, gegebenenfalls Alignment und Objekt-Metadaten übrig.

## Was man sinnvoll vergleichen kann

`percent` und `bounded` erwarten nicht-negative Operanden in `[0,B)`.
`centered` erwartet bereits zentrierte Operanden in
`[-floor(B/2), ceil(B/2))`. Für Laufzeitmoduli gilt `1 <= B <= INT32_MAX`.
Die zwei 32-Bit-Darstellungen erlauben unter diesem Vertrag überlauffreie
Summen. Normalisierung und Fehlerbehandlung sind bewusst nicht enthalten.
Für dieselbe Restklasse können die Eingabebits beider Darstellungen verschieden
sein. Ergebnisse sind nach Umrechnung modulo B zu vergleichen.

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

Die CTest-Prüfung `reist.examples.disassembly` prüft alle 15 Funktionen gegen
eine breite Referenz einschließlich Randwerten und leeren Schleifen. Ihr
separates Test-Executable gehört nicht zu den Disassembler-Artefakten.
