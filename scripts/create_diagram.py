#!/usr/bin/env python3

import matplotlib
matplotlib.use("Agg")  # Non-interactive backend for file output
import matplotlib.pyplot as plt

# Globale Style-Settings
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.size"] = 12
plt.rcParams["axes.linewidth"] = 1.5

COLOR_CLASSIC = "#E69F00"  # Golden Orange
COLOR_REIST   = "#E69F00"  # gleiche Farbe wie im Screenshot
B = 1.0


def setup_axis_with_vertical_grid(ax, xmin, xmax, xticks, xticklabels):
    """Gemeinsames Achsen-Layout wie in deinen Bildern."""
    ax.set_xlim(xmin, xmax)
    ax.set_ylim(-0.1, 0.1)

    # Nur linke und untere Achse anzeigen
    ax.spines["left"].set_visible(True)
    ax.spines["bottom"].set_visible(True)
    ax.spines["right"].set_visible(False)
    ax.spines["top"].set_visible(False)

    # y-Achse selbst ohne Ticks/Labels
    ax.yaxis.set_visible(False)

    # x-Ticks und Labels
    ax.set_xticks(xticks)
    ax.set_xticklabels(xticklabels)

    # Vertikale gestrichelte Linien wie im Screenshot
    ax.grid(
        axis="x",
        linestyle="--",
        linewidth=0.6,
        color="0.8"
    )

    # Achsenlinie leicht nach unten verschieben (optisch mittig)
    ax.spines["bottom"].set_position(("data", -0.05))


def plot_classical_interval():
    fig, ax = plt.subplots(figsize=(8, 3))

    # Achsen mit 0.0, 0.2, ..., 1.0
    xticks = [i / 5 for i in range(6)]
    xticklabels = [f"{x:.1f}" for x in xticks]
    setup_axis_with_vertical_grid(ax, xmin=0.0, xmax=B, xticks=xticks, xticklabels=xticklabels)

    ax.set_title("Classical Remainder Interval $[0, B)$", pad=20)

    # Horizontale Linie
    y = 0.0
    ax.hlines(y, 0.0, B, colors=COLOR_CLASSIC, linewidth=3)

    # Endpunkte: 0 geschlossen, B offen
    ax.plot(0.0, y, "o",
            color=COLOR_CLASSIC,
            markersize=10,
            markeredgecolor="black",
            markeredgewidth=1.5,
            zorder=5)

    ax.plot(B, y, "o",
            markerfacecolor="white",
            markeredgecolor=COLOR_CLASSIC,
            markersize=10,
            markeredgewidth=2,
            zorder=5)

    # Labels oben links / rechts (0 und B), in Achsen-Koordinaten
    ax.text(0.0, 1.02, "0",
            transform=ax.get_xaxis_transform(),
            ha="left",
            va="bottom")

    ax.text(1.0, 1.02, "B",
            transform=ax.get_xaxis_transform(),
            ha="right",
            va="bottom")

    plt.tight_layout()
    plt.savefig("REIST_Classical_Interval.png", dpi=300)
    plt.close(fig)


def plot_reist_interval():
    fig, ax = plt.subplots(figsize=(8, 3))

    # Achsen mit -0.4, -0.2, 0.0, 0.2, 0.4
    half = B / 2.0
    xticks = [-0.4, -0.2, 0.0, 0.2, 0.4]
    xticklabels = [f"{x:.1f}" for x in xticks]
    setup_axis_with_vertical_grid(ax, xmin=-half, xmax=half, xticks=xticks, xticklabels=xticklabels)

    ax.set_title("REIST Remainder Interval $[-B/2, B/2)$", pad=20)

    # Horizontale Linie
    y = 0.0
    ax.hlines(y, -half, half, colors=COLOR_REIST, linewidth=3)

    # Endpunkte: -B/2 geschlossen, +B/2 offen (halboffenes Intervall)
    ax.plot(-half, y, "o",
            color=COLOR_REIST,
            markersize=10,
            markeredgecolor="black",
            markeredgewidth=1.5,
            zorder=5)

    ax.plot(half, y, "o",
            markerfacecolor="white",
            markeredgecolor=COLOR_REIST,
            markersize=10,
            markeredgewidth=2,
            zorder=5)

    # Labels oben links / rechts (-B/2 und +B/2)
    ax.text(-half, 1.02, r"$-B/2$",
            transform=ax.get_xaxis_transform(),
            ha="left",
            va="bottom")

    ax.text(half, 1.02, r"$+B/2$",
            transform=ax.get_xaxis_transform(),
            ha="right",
            va="bottom")

    plt.tight_layout()
    plt.savefig("REIST_Symmetric_Interval.png", dpi=300)
    plt.close(fig)


if __name__ == "__main__":
    plot_classical_interval()
    plot_reist_interval()
