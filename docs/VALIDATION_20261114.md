# Validierung der Benchmark-Revision vom 14. November 2026

- Frischer CMake/Ninja-Release-Build mit GCC 15.2.0 und Warnungen als Fehler:
  erfolgreich.
- CTest: 15/15 bestanden, einschließlich exhaustiver kleiner Moduli,
  32-Bit-Grenzwerte, 420 Konfigurationen der neuen Messkerne,
  ungültiger CLI-Eingaben und beschädigter/trunkierter Messdateien.
- Runner-Integration: vollständiger Quick-Lauf mit 24 Fällen bestanden.
- Abschließende neue Messung: 630/630 Fälle, zwölf Versuche pro Methode,
  insgesamt 22.680 validierte Einzelmessungen. Native ISA, logische CPU 0.
- Archivprüfung: alle Artefakthashes, Quelldateihashes, Fallparameter,
  Rohmessungen und aus Rohdaten neu berechnete Zusammenfassungen stimmen.
- Python: Syntaxprüfung und Black 26.10.1; C++: clang-format 23.1.5 mit
  LLVM-Basis, vier Leerzeichen und 88 Spalten. Formatterprüfung und
  `git diff --check` erfolgreich. Nur die neuen Dateien wurden formatiert.
- PDFs aus Quellen erzeugt, alle Seiten gerendert und visuell geprüft.
  LaTeX-Abschlusslauf ohne übervolle Boxen oder undefinierte Referenzen.
- Lokaler ASan/UBSan-Build versucht, aber vom Linker abgelehnt: der
  installierten MinGW-Toolchain fehlen `libasan` und `libubsan`.
  Kein erfolgreicher lokaler Sanitizer-Lauf wird behauptet. Die bestehende
  Linux-Clang-Sanitizer-CI umfasst über CTest auch die neuen Tests.
- ARM und FPGA wurden nicht neu vermessen. Die historischen Programme und
  Ergebnisse bleiben als solche gekennzeichnet.
- GitHub-CI nach den Plattformkorrekturen: alle acht Jobs erfolgreich,
  einschließlich Linux GCC/Clang, ARM64/NEON, Windows Clang/MSVC,
  ASan/UBSan, Manifest-Runner und Compilerartefakten. Nachweis:
  https://github.com/rudolfstepan/reist-crypto-bench/actions/runs/43618905640
  Die ARM-Ausführung ist eine Funktionsprüfung, keine neue Paper-Messreihe.

Das Archiv bewahrt zusätzlich zu Git-HEAD und Status die exakten Quelldateien des Messprogramms,
seinen Binärhash und die vollständige Build-Konfiguration. Die finalen
Messquellen stimmen mit diesen archivierten Hashes überein.

Die plattformübergreifende Prüfung führte außerdem zu drei Reparaturen:
Die 128-Bit-Erkennung prüft jetzt echte Division/Modulo beim Linken, die
neuen Templates vermeiden unerreichbare Rückgaben unter MSVC, und die
ARM-Laufzeitkerne erhalten bereits normalisierte Eingaben außerhalb der
Zeitmessung. Der Assembler-Check für konstante Divisoren gilt ausdrücklich
für O3; unoptimiertes Clang darf bei O0 weiterhin Division erzeugen.
