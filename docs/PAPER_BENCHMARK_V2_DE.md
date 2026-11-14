# Neue Paper-Auswertung: Version 2

Stand: 14. November 2026

Die neue Auswertung verwendet `bench_paper_addition` und
`scripts/run_paper_benchmarks.py`. Sie ergänzt den bisher fehlenden Vergleich
zwischen zwei bereichsbeschränkten Darstellungen. Die bisherigen sieben
Programme und ihre O0/O3/SIMD-Berichte bleiben historische Vergleichs- und
Kontrollprogramme; ihre einzelnen Zeitblöcke sind keine neue statistische
Evaluation. Der neue Bericht mischt ihre Zahlen nicht mit der neuen Matrix.

## Arithmetik und faire Baselines

Alle drei Methoden führen dieselbe modulare Addition aus:

1. `percent`: nicht-negative Operanden, `(a + b) % B`.
2. `bounded`: nicht-negative Operanden, Summe und gegebenenfalls `-B`.
3. `centered`: kanonische Operanden, Summe und gegebenenfalls `-B` oder `+B`.

Es gilt `1 <= B <= INT32_MAX`. Die nicht-negativen Methoden verwenden
`uint32_t`, deren Summe höchstens `2B-2` beträgt. Die zentrierte Methode
verwendet `int32_t`, dessen Summenbereich ebenfalls nicht überschritten wird.
Damit haben alle Operanden 32 Bit und keine Methode benötigt Überlaufprüfungen
im heißen Kern. Eine Erweiterung auf größere Moduli erfordert einen neuen
Vertrag; die Schnittstelle lehnt sie ausdrücklich ab.

Alle Kerne werden in derselben Übersetzungseinheit mit denselben ISA-Flags
übersetzt. `constant` instanziiert echte Template-Konstanten, `runtime` nimmt
den Modul als Laufzeitargument entgegen. Es gibt keine künstliche Sperre gegen
gewöhnliche Compileroptimierung. Auto-Vektorisierung bleibt möglich;
explizite SIMD-Intrinsics sind Gegenstand der weiterhin verfügbaren separaten
Intrinsics-Diagnostik. Ein als native gebauter Kern ist nicht automatisch AVX2.

## Festgelegte Matrix

- Moduli: `1, 256, 257, 12289, 1000003, 1000000007, 2147483647`.
- Schritte: `positive` (+3), `negative` (-3), `alternating` (+3/-3),
  `boundary` (Intervallgrenzen und ±1), `uniform` (deterministischer Xorshift).
- Bei `uniform` entsteht durch `% B` eine geringe Modulo-Verteilungsverzerrung.
  Es wird keine kryptographisch zufällige Verteilung behauptet.
- `serial`: ein abhängiger Zustand, 4096 Schritte pro Durchlauf.
- `array`: unabhängige persistente Zustände, 17, 4096 oder 262144 Elemente.
- `polynomial`: 1024 unabhängige Koeffizienten; Ausgabe wird je Pass ersetzt.
- Kernelmessungen: mindestens 8388608 Updates je Methode und Versuch.
- Messungen einschließlich Vorbereitung: 65536 unabhängige Zustände mit
  1, 4, 16 oder 256 Updates pro Zustand.
- Beide Modulusbindungen und beide Messgrenzen ergeben insgesamt 630 Fälle.

Die Ausgangszustände sind null. Bei der polynomialen Addition liefert die
zweite Hälfte des Eingabearrays die zweiten Operanden. Der seriell wiederholte
Schrittvektor und die je Arrayposition wiederholten Schritte sind bewusst
deterministisch. Die Matrix bildet keine beliebige Anwendung ab.

## Messgrenzen und Statistik

`kernel` misst nur den vorbereiteten Rechenkern. `end_to_end` umfasst
Normalisierung vorzeichenbehafteter Eingaben, Speicherallokation, Rechenkern
und Konvertierung in eine nicht-negative Ausgabe. Eingabeerzeugung,
Ergebnisprüfung und die abschließende Speicherfreigabe liegen außerhalb.
Das ist eine Messung der lokalen Verarbeitungskette, keine vollständige
Anwendung und kein kryptographisches Protokoll.

Jede Methode erhält einen vollständigen Warm-up mit anschließender Prüfung.
Zwölf Versuche durchlaufen alle sechs Methodenreihenfolgen zweimal. Die
Fallreihenfolge wird mit festem Seed permutiert. Jede Methode startet mit
frischem, äquivalentem Zustand; `steady_clock` liefert monotone Zeitmessung.

Alle Rohzeiten bleiben erhalten. Berichtet werden Median, Q1 und Q3 sowie
gepaarte Quotienten `% / centered` und `bounded / centered`. Ein Quotient
größer eins bedeutet einen Vorteil für centered. Quartile beschreiben
Streuung und sind keine Konfidenzintervalle. Laufzeiten unter 100 Mikrosekunden
werden markiert. Ist ein Nenner null, bleibt der gesamte Quotient dieses
Falls unbestimmt; keine Ersatzzeit wird erfunden und kein Versuch verworfen.
`B=1` ist eine entartete Kontrolle, kein repräsentativer Speedup-Messpunkt.

Eine unabhängige 64-Bit-Referenz prüft die Ergebnisse aller gemessenen Pfade.
Sie ermittelt außerdem über die vollständige Eingabefolge die oberen,
unteren und nicht-negativen Korrekturhäufigkeiten außerhalb der Messung.
Kanonische Grenzen werden zusätzlich kontrolliert.

## Reproduktion

Benötigt werden Python >= 3.10, CMake >= 3.20, Ninja und GCC oder Clang.
Der Runner konfiguriert und baut das Programm selbst frisch als Release.

```sh
python scripts/run_paper_benchmarks.py --result-dir tests/results/x86/NEW_PAPER_V2 --native --affinity-cpu 0
```

`--native` aktiviert `-march=native` für alle drei Pfade. Ohne diesen Schalter
gilt die Compiler-Standardarchitektur. `--affinity-cpu` ist optional und für
Linux und Windows implementiert; eine nicht erfüllbare Bindung ist ein Fehler.
Der hier archivierte Windows-Lauf verwendet CPU 0. Temperatur, Turbo und
Hintergrundprozesse werden nicht gesteuert; die Ergebnisse sind lokale
Messwerte und keine universellen Hardwarekonstanten.

`--quick --trials 6` führt 24 kleine Integrationsfälle aus. Quick-Berichte
sind für Funktionstests bestimmt. `--target-updates` ändert die Arbeit der
Kernelmessungen; die vier Vorbereitungsfälle bleiben fest. Neue Verzeichnisse
verhindern ein Vermischen mehrerer Läufe.

Das Archiv enthält `MANIFEST.json`, Build-Protokolle, Compilerkommando und
Version, Quellsnapshots, Binärhash, Hashes aller Artefakte, `SUMMARY.csv`,
`REPORT.md` und die Rohdaten jedes Falls. Der Runner bricht bei Fehlern ab
und schreibt einen fehlgeschlagenen Manifeststatus. Ein Archiv lässt sich
ohne die ursprünglichen Binärdateien prüfen:

```sh
python scripts/verify_paper_archive.py tests/results/x86/20261114_PAPER_V2
```

Die Hashes sichern Konsistenz, keine externe Beglaubigung. Git-HEAD und
Arbeitsbaumstatus werden zusätzlich festgehalten; die mitgespeicherten
Quellbytes identifizieren auch einen vor dem Commit gemessenen Stand.

## Dokumente und Tests

Die wiederhergestellte Langfassung liegt samt LaTeX-Quelle unter
`docs/papers/`. Ihre historischen Kapitel bleiben als solche gekennzeichnet;
der neue Abschnitt und das separate Auswertungs-PDF beziehen sich auf die
neue Matrix. ARM- und FPGA-Zahlen wurden hier nicht neu gemessen.

```sh
cmake -S . -B build/check -G Ninja -DCMAKE_BUILD_TYPE=Release -DREIST_WARNINGS_AS_ERRORS=ON
cmake --build build/check --parallel
ctest --test-dir build/check --output-on-failure
python scripts/build_paper_documents.py tests/results/x86/20261114_PAPER_V2
```

Der Dokumentgenerator benötigt zusätzlich ReportLab und `pdflatex` mit den
im Manuskript verwendeten TeX-Paketen. Die CTest-Suite prüft kleine Moduli
exhaustiv, große Randwerte, 420 Kombinationen der tatsächlichen Messkerne,
fehlerhafte Argumente und manipulierte Messdateien. Laufzeitverhältnisse sind
niemals Bestehensbedingungen.
