# Umsetzungsnotiz und Erratum zur deutschen Paperfassung

Stand: 2026

Diese Notiz bezieht sich auf [*REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik*](<REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>), DOI [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471).

Die veröffentlichte PDF ist ein binäres Publikationsartefakt ohne LaTeX-/Satzquellen in diesem Repository. Sie wird deshalb nicht nachträglich überschrieben; die Abweichung wird hier dokumentiert und in Software und Tests korrigiert.

## Erratum zu Listings 2-4 auf PDF-Seiten 10-11

Definition 3.1 legt kanonisch das halboffene Intervall

```text
[-B/2, B/2)
```

fest. Bei geradem `B` gehört somit `-B/2` zum Intervall, `+B/2` dagegen nicht. Für ungerades `B` sind die ganzzahligen Vertreter symmetrisch von `-(B-1)/2` bis `+(B-1)/2`.

Die CPU-Listings 2-4 verwenden stattdessen Bedingungen der früheren Spiegelvariante:

```cpp
if (s > half)          s -= B;
else if (s <= -half)  s += B;
```

mit `half = floor(B/2)`. Die untere Bedingung ist für ungerade Moduli falsch. Beispielsweise wird bei `B=5` der bereits gültige Wert `s=-2` fälschlich zu `3`; bei `B=1` wird `0` fälschlich zu `1`.

## Korrekte kanonische Formel

Für bereits zentrierte Operanden `r` und `x` sowie `B > 0` gilt:

```cpp
half = B / 2;            // floor(B/2)
lo   = -half;
hi   = B - half;         // ceil(B/2)
s    = r + x;

if (s >= hi)      s -= B;
else if (s < lo)  s += B;
```

Branchless, wobei beide Flags aus dem ursprünglichen `s` berechnet werden:

```cpp
ge = (s >= hi);
lt = (s < lo);
s -= ge * B;
s += lt * B;
```

Dies entspricht Listing 5 auf PDF-Seite 18:

```text
lo = -floor(B/2)
hi = B - floor(B/2) = ceil(B/2)
```

Eine bewusste Spiegelvariante mit positivem Tie bei geradem `B` verwendet als ganzzahliges halboffenes Intervall dagegen

```text
lo = 1 - ceil(B/2)
hi = 1 + floor(B/2)
```

also die Bedingungen `s >= hi` beziehungsweise `s < lo`. Sie unterscheidet sich von der kanonischen Variante nur beim geraden Mittelpunkt; für ungerade `B` fallen beide korrekten Intervalle zusammen. Die fehlerhafte untere Grenze der Listings 2-4 ist daher keine zulässige Tie-Konvention.

## Konsequenzen für Software und Tests

- Öffentliche Referenzfunktionen verwenden die kanonische Konvention.
- `B <= 0` ist ungültig.
- Die Ein-Korrektur-Regel setzt zentrierten Zustand und zentrierte Eingaben voraus.
- Bei einem Modulwechsel ist neu zu zentrieren.
- Tests decken `B=1`, gerade und ungerade Moduli, negative Eingaben und beide Mittelpunktseiten ab.
- Scalar-, branchless-, SIMD- und FPGA-Pfade müssen exakt dieselbe ausgewählte Konvention liefern.
- Identitäten wie `T = q*B+r` werden in ausreichend breiter Arithmetik geprüft.

Der Wechsel zwischen zwei korrekt implementierten Tie-Konventionen ändert die Schleifenform nicht; exakte Ergebniswerte und Schnittstellenverträge aber sehr wohl. Die fehlerhaften Odd-`B`-Grenzen der Listings 2-4 müssen unabhängig davon korrigiert werden.

## Gepinnte FPGA-Referenz

Die FPGA-Implementierung wird im Repository [`rudolfstepan/6502-sbc-fpga`](https://github.com/rudolfstepan/6502-sbc-fpga) gepflegt. Der hier zitierte unveränderliche Veröffentlichungs- und Provenienzstand ist Commit [`dfe49fb15bebca66214de3c9d0eb7d333d980d13`](https://github.com/rudolfstepan/6502-sbc-fpga/commit/dfe49fb15bebca66214de3c9d0eb7d333d980d13):

- [RTL](https://github.com/rudolfstepan/6502-sbc-fpga/tree/dfe49fb15bebca66214de3c9d0eb7d333d980d13/rtl/reist)
- [Testbench `tb_reist_core.vhd`](https://github.com/rudolfstepan/6502-sbc-fpga/blob/dfe49fb15bebca66214de3c9d0eb7d333d980d13/sim/tb/tb_reist_core.vhd)
- [Gowin-Projekte für Tang Primer 20K](https://github.com/rudolfstepan/6502-sbc-fpga/tree/dfe49fb15bebca66214de3c9d0eb7d333d980d13/boards/tang_primer_20k/reist)

Dieser historische Pin ist keine direkt aus einem frischen Checkout reproduzierbare Gowin-Bauanleitung: Die dortigen `.gprj`-Dateien enthalten noch absolute lokale `D:/`-Pfade, und der spätere Ablauf `build_reist.tcl` ist in diesem Commit nicht vorhanden. Für die laufende FPGA-Entwicklung gilt deshalb das aktive Repository. Ein neuer als direkt baubar bezeichneter Pin darf erst nach Commit und Push der relativen Projektdateien und Buildskripte gesetzt werden.
