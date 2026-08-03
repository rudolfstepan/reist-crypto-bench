# Technische Klarstellungen zur frühen REIST-Diskussion

Dieses Dokument ersetzt das vorläufige Community-Feedback-Appendix von 2025. Maßgeblich ist jetzt die [deutsche Paperfassung von 2026](<REIST-Division - Eine implementierungsorientierte Formulierung zentrierter Restarithmetik.pdf>), DOI [10.5281/zenodo.21206471](https://doi.org/10.5281/zenodo.21206471). Die Korrektur zu den CPU-Listings steht in [PAPER_CORRECTIONS_DE.md](PAPER_CORRECTIONS_DE.md).

## Compileroptimierung

Bei einem zur Übersetzungszeit bekannten Divisor können Compiler `%` durch eine Multiplikations-/Shift-Folge ersetzen. Deshalb darf die Baseline nicht pauschal als Hardware-Division beschrieben werden. Bei einem Laufzeitdivisor können x86 `div`/`idiv` beziehungsweise AArch64 `sdiv`/`udiv` verbleiben.

Die REIST-Ein-Korrektur-Schleife benötigt keinen Restoperator, wenn Zustand und Eingaben bereits zentriert sind und der Modul während der Akkumulationsphase stabil bleibt. Die einmalige Erstzentrierung kann weiterhin eine vollständige Restberechnung benötigen.

## SIMD

Gängige NEON- und AVX2-Befehlssätze besitzen keine allgemeine Integer-Vektordivision. Vergleiche, Masken sowie Additionen/Subtraktionen sind dagegen lane-weise verfügbar. Das macht den zentrierten Additionskern vektorisierbar, beweist aber keinen Vorteil für vollständige Algorithmen oder speichergebundene Schleifen.

## Algebraische Einordnung

REIST verwendet die klassischen betragskleinsten Vertreter der Restklassen. Es definiert keinen neuen Ring. Der implementierungsrelevante Unterschied ist, den zentrierten Vertreter als persistenten Zustand zu halten, statt nach jeder Operation erneut einen beliebigen Wert vollständig zu reduzieren.

Balanced-Modulo-Normalisierung und REIST können dasselbe Vertretersystem erzeugen. Der Performanceansatz entsteht aus der Schleifeninvariante, nicht aus einer anderen modularen Algebra.

## Geltungsbereich

Geeignet sind additionsdominierte modulare Zähler, Akkumulatoren und zentrierte Add/Sub-Schichten. Nicht beansprucht werden:

- allgemeine divisionsfreie Ganzzahlarithmetik,
- ein Ersatz für Montgomery- oder Barrett-Reduktion,
- Beschleunigungen vollständiger RSA-, ECC-, NTT- oder Post-Quantum-Verfahren,
- Vorteile für ChaCha-/ARX-Code oder diffusionslastige Hash-Mischer,
- automatische Konstantzeit- oder Seitenkanalsicherheit.

Benchmarkberichte müssen Compiler, Flags, Quellrevision, Hardware und den konkret analysierten Kernel nennen. Die Artefaktprüfung dieses Repositories arbeitet deshalb kernel-spezifisch und speichert ein Buildmanifest.
