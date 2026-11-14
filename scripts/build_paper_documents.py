#!/usr/bin/env python3
"""Generate the evaluation PDF and manuscript tables from a verified archive."""

import argparse
import json
import shutil
import statistics
import subprocess
from pathlib import Path
from xml.sax.saxutils import escape

from verify_paper_archive import verify

ROOT = Path(__file__).resolve().parents[1]


def grouped(rows):
    groups = []
    for shape in ("serial", "array", "polynomial"):
        for binding in ("constant", "runtime"):
            selected = [
                row
                for row in rows
                if row["workload"] == shape
                and row["binding"] == binding
                and row["boundary"] == "kernel"
                and row["modulus"] != 1
            ]
            groups.append(
                (
                    shape,
                    binding,
                    len(selected),
                    *[
                        statistics.median(
                            row[f"{baseline}_over_centered_median"] for row in selected
                        )
                        for baseline in ("percent", "bounded")
                    ],
                )
            )
    return groups


def build(directory: Path) -> None:
    rows = verify(directory)
    manifest = json.loads((directory / "MANIFEST.json").read_text(encoding="utf-8"))
    if manifest["quick"]:
        raise ValueError("quick archives cannot produce paper documents")
    groups = grouped(rows)
    short_count = sum(row["short_trial"] for row in rows)
    documents = ROOT / "docs/papers"
    documents.mkdir(parents=True, exist_ok=True)
    tex = [
        r"\section{Neue CPU-Evaluation vom 14. November 2026}",
        r"\label{sec:neuevaluation}",
        "Die neue Evaluation vergleicht drei gleich breite Additionskerne: den",
        r"Restoperator \texttt{\%}, nicht-negative Addition mit bedingter Subtraktion",
        r"und die kanonisch zentrierte $\pm B$-Korrektur. Alle Operanden sind 32 Bit",
        r"breit; $1\le B\le 2^{31}-1$ verhindert Überlauf in beiden Darstellungen.",
        "Konstante Template-Moduli und Laufzeitmoduli werden getrennt ausgewertet.",
        "Alle drei Methoden erhalten dieselben Compiler- und ISA-Optionen.",
        "",
        f"Der vollständige Lauf umfasst {len(rows)} Fälle und {manifest['trials']} Versuche",
        "je Methode, mit allen sechs Ausführungsreihenfolgen gleich häufig und",
        "einem vollständigen Warm-up. Fünf Eingabemuster decken positive, negative,",
        "alternierende, grenznahe und pseudozufällige Schritte ab. Eine unabhängige",
        "64-Bit-Referenz prüft alle Ausgaben und zählt die Korrekturen außerhalb",
        "der Zeitmessung. Serielle Zustände, unabhängige Arrays und polynomielle",
        "Addition werden getrennt betrachtet.",
        "",
        r"Gemessen wurde mit GCC 15.2.0, CMake Release, \texttt{-O3 -DNDEBUG}",
        r"und \texttt{-march=native} unter Windows auf dem Intel Core i9-14900K.",
        "Der Prozess war an logische CPU 0 gebunden. Turbo, Temperatur und",
        "Hintergrundlast wurden nicht kontrolliert. ARM und FPGA wurden nicht neu vermessen.",
        "Die Zahlen gelten für diese Übersetzung und diesen Lauf.",
        "",
        r"\begin{center}\small",
        r"\begin{tabular}{llrrr}\toprule",
        r"Last & Bindung & Fälle & \% / zentriert & beschränkt / zentriert \\\midrule",
    ]
    for shape, binding, count, percent, bounded in groups:
        tex.append(
            f"{shape} & {binding} & {count} & {percent:.3f} & {bounded:.3f} " + r"\\"
        )
    tex += [
        r"\bottomrule\end{tabular}\end{center}",
        "Die Tabelle zeigt den Median der fallweisen Medianquotienten, ohne",
        r"die entartete Kontrolle $B=1$. Ein Quotient größer eins begünstigt die",
        "zentrierte Darstellung. Diese deskriptive Zusammenfassung über unterschiedliche",
        "Lasten ist kein gemeinsamer Anwendungsspeedup. Rohwerte und Quartile",
        "jedes einzelnen Falls bleiben im Archiv erhalten; Quartile sind keine",
        "Konfidenzintervalle. Verluste werden nicht entfernt.",
        "",
        "Der Vergleich mit dem Restoperator allein überschätzt den Nachweis eines",
        "Repräsentationsvorteils. Die beschränkte nicht-negative Baseline ist in",
        "den zusammengefassten Array- und Polynomfällen schneller als die zentrierte",
        "Variante. Bei seriellen konstanten Moduli zeigt die Zusammenfassung einen",
        "Vorteil für centered; bei seriellen Laufzeitmoduli keinen allgemeinen Vorteil.",
        "Die neue Messung stützt daher keine universelle Überlegenheit der Zentrierung.",
        "",
        "Zusätzliche Fälle mit 65536 Zuständen und 1, 4, 16 oder 256 Updates",
        "messen Normalisierung, Allokation und Rückkonvertierung mit. Eingabeerzeugung,",
        "Validierung und abschließende Freigabe bleiben außerhalb. Diese Grenze ist",
        "eine lokale Verarbeitungskette und kein vollständiges Kryptosystem.",
        "Ein allgemeiner Amortisationspunkt wird nicht aus aggregierten Werten abgeleitet.",
        "",
        r"\noindent\textbf{Reproduktion:} Quellcode, Build-Kommandos, Hashes und alle",
        r"Rohdaten stehen im Repository unter \path{tests/results/x86/20261114_PAPER_V2}.",
        r"Die Methodik erläutert \path{docs/PAPER_BENCHMARK_V2_DE.md}.",
        r"Das Skript \path{scripts/run_paper_benchmarks.py} baut und misst die Matrix.",
        "",
    ]
    (documents / "paper-v2-results.tex").write_text("\n".join(tex), encoding="utf-8")

    from reportlab.lib import colors
    from reportlab.lib.styles import getSampleStyleSheet
    from reportlab.lib.units import cm
    from reportlab.platypus import (
        SimpleDocTemplate,
        Paragraph,
        Spacer,
        Table,
        TableStyle,
        PageBreak,
    )

    styles = getSampleStyleSheet()
    styles["BodyText"].leading = 15
    styles["BodyText"].spaceAfter = 9
    pdf = SimpleDocTemplate(
        str(documents / "REIST-Benchmark-Update-2026.pdf"),
        rightMargin=2 * cm,
        leftMargin=2 * cm,
        topMargin=2 * cm,
        bottomMargin=2 * cm,
    )
    story = []

    def paragraph(text, style="BodyText"):
        story.append(Paragraph(escape(text), styles[style]))

    paragraph("REIST: neue Benchmark-Auswertung", "Title")
    paragraph("14. November 2026 | Methodik v2 | lokale x86-Messung", "Heading2")
    paragraph(
        "Die neue Vergleichsbasis verändert die Interpretation: Auch nicht-negative "
        "modulare Addition kommt bei beschränkten Operanden ohne allgemeinen Restoperator aus. "
        "Ein Gewinn gegenüber % allein belegt keinen eigenständigen Vorteil der Zentrierung."
    )
    paragraph(
        f"Der vollständig validierte Lauf umfasst {len(rows)} Fälle, drei Methoden und "
        f"{manifest['trials']} Versuche pro Methode. Alle sechs Reihenfolgen werden gleich oft "
        "ausgeführt. Rohwerte, Verluste, Korrekturhäufigkeiten und Build-Provenienz sind archiviert."
    )
    paragraph("Kernmessungen: deskriptive Zusammenfassung", "Heading2")
    data = [["Last", "Bindung", "Fälle", "% / centered", "bounded / centered"]]
    data += [
        [shape, binding, str(count), f"{percent:.3f}", f"{bounded:.3f}"]
        for shape, binding, count, percent, bounded in groups
    ]
    table = Table(data, colWidths=[2.8 * cm, 2.6 * cm, 1.5 * cm, 3.6 * cm, 5.2 * cm])
    table.setStyle(
        TableStyle(
            [
                ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#16324f")),
                ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
                ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.whitesmoke, colors.white]),
                ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
                ("FONTSIZE", (0, 0), (-1, -1), 9),
                ("BOTTOMPADDING", (0, 0), (-1, -1), 9),
                ("TOPPADDING", (0, 0), (-1, -1), 9),
            ]
        )
    )
    story += [table, Spacer(1, 0.4 * cm)]
    paragraph(
        "Gezeigt wird der Median der fallweisen Medianquotienten, ohne B=1. Werte über eins "
        "begünstigen centered. Die Zusammenfassung verschiedener Eingaben und Größen ist "
        "kein Anwendungsspeedup. Für belastbare Einzelfallinterpretationen gelten die Rohdaten "
        "und Q1/Median/Q3 im vollständigen Bericht."
    )
    paragraph(
        "Gegenüber bounded ist centered in den aggregierten Array- und Polynomfällen "
        "langsamer. Serielle konstante Moduli fallen anders aus als Laufzeitmoduli. "
        "Eine universelle Überlegenheit lässt sich daraus nicht ableiten."
    )
    paragraph("Umgebung", "Heading2")
    paragraph(
        "GCC 15.2.0, CMake Release, -O3 -DNDEBUG -march=native, Windows, "
        "Intel Core i9-14900K; Bindung an logische CPU 0. Turbo, Temperatur und "
        "Hintergrundlast wurden nicht geregelt. Keine neue ARM- oder FPGA-Messung."
    )
    story.append(PageBreak())
    paragraph("Messvertrag und Reproduktion", "Title")
    for title, text in [
        (
            "Gleiche Voraussetzungen",
            "32-Bit-Operanden, B bis INT32_MAX. Nicht-negative Summen "
            "passen in uint32_t, zentrierte Summen in int32_t. Die drei Methoden verwenden dieselbe "
            "Übersetzungseinheit und ISA. Konstante und Laufzeitmoduli sind getrennte Kerne.",
        ),
        (
            "Eingaben und Abhängigkeiten",
            "Sieben Moduli einschließlich B=1, Zweierpotenz und "
            "INT32_MAX; fünf Schrittverteilungen. Ein serieller Zustand wird von unabhängigen "
            "Arrayzuständen und wiederholt überschriebenen Polynomkoeffizienten getrennt. "
            "Die pseudozufällige Verteilung hat eine geringe Modulo-Verzerrung.",
        ),
        (
            "Vorbereitungskosten",
            "Neben reinen Kernmessungen stehen 65536 Zustände mit 1, 4, 16 "
            "oder 256 Updates. Diese Messungen enthalten Normalisierung, Allokation und "
            "Ausgabekonvertierung. Erzeugung der Rohdaten, Validierung und finale Speicherfreigabe "
            "liegen außerhalb. Ein allgemeiner Amortisationspunkt wird nicht behauptet.",
        ),
        (
            "Statistik und Grenzen",
            "Zwölf Versuche je Methode, vollständiger Warm-up, sechs "
            "ausbalancierte Reihenfolgen. Quotienten werden innerhalb desselben Versuchs gepaart. "
            f"Quartile sind Streuungsmaße, keine Konfidenzintervalle. {short_count} Fälle enthalten mindestens "
            "eine Zeit unter 100 Mikrosekunden. Nullzeiten bleiben unverändert; betroffene Quotienten "
            "werden als unbestimmt geführt. B=1 ist eine entartete Kontrolle.",
        ),
        (
            "Archiv",
            "tests/results/x86/20261114_PAPER_V2 enthält MANIFEST.json, SUMMARY.csv, "
            "REPORT.md und sämtliche Einzelmessungen. Das Manifest bindet die Quelldateien, "
            "Binärdatei, Compilerkommando und Rohartefakte über SHA-256. Ein vor dem Commit "
            "gemessener Arbeitsbaum wird ausdrücklich protokolliert.",
        ),
        (
            "Befehle",
            "Messung: python scripts/run_paper_benchmarks.py --result-dir NEUER_ORDNER "
            "--native --affinity-cpu 0. Archivprüfung: python scripts/verify_paper_archive.py "
            "tests/results/x86/20261114_PAPER_V2. Weitere Details: docs/PAPER_BENCHMARK_V2_DE.md.",
        ),
    ]:
        paragraph(title, "Heading2")
        paragraph(text)

    def footer(canvas, document):
        canvas.setFont("Helvetica", 9)
        canvas.drawString(2 * cm, 1.1 * cm, "REIST | Benchmark-Revision 2026")
        canvas.drawRightString(19 * cm, 1.1 * cm, str(document.page))

    pdf.build(story, onFirstPage=footer, onLaterPages=footer)
    build_dir = ROOT / "build/paper-documents"
    build_dir.mkdir(parents=True, exist_ok=True)
    for iteration in range(3):
        command = [
            "pdflatex",
            "-interaction=nonstopmode",
            "-halt-on-error",
            "-output-directory=" + str(build_dir),
            "REIST-Division-DE-Langfassung.tex",
        ]
        completed = subprocess.run(
            command, cwd=documents, capture_output=True, timeout=180
        )
        (build_dir / f"pass-{iteration}.txt").write_bytes(
            completed.stdout + completed.stderr
        )
        completed.check_returncode()
    shutil.copyfile(
        build_dir / "REIST-Division-DE-Langfassung.pdf",
        documents / "REIST-Division-DE-Langfassung.pdf",
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path)
    build(parser.parse_args().archive.resolve())
