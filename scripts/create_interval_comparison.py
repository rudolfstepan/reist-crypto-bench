#!/usr/bin/env python3

import matplotlib
matplotlib.use("Agg")  # non-interactive backend
import matplotlib.pyplot as plt

# Style
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.size"] = 12
plt.rcParams["axes.linewidth"] = 1.5

COLOR = "#E69F00"
B = 1.0

def setup_axis(ax, xmin, xmax, xticks, xticklabels):
    ax.set_xlim(xmin, xmax)
    ax.set_ylim(-0.1, 0.1)

    # nur linke + untere Achsenlinie
    ax.spines["left"].set_visible(True)
    ax.spines["bottom"].set_visible(True)
    ax.spines["right"].set_visible(False)
    ax.spines["top"].set_visible(False)

    # y-Achse komplett ohne Ticks/Labels
    ax.yaxis.set_ticks([])
    ax.set_yticklabels([])

    # x-Ticks unten
    ax.set_xticks(xticks)
    ax.set_xticklabels(xticklabels)

    # vertikale gestrichelte Linien
    ax.grid(axis="x", linestyle="--", linewidth=0.6, color="0.8")

    # x-Achse leicht nach unten schieben (optisch wie in deinem Bild)
    ax.spines["bottom"].set_position(("data", -0.05))


def create_comparison():
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8, 2.8), sharey=True)

    y = 0.0

    # --- Classical [0, B) ---
    xticks1 = [0.0, 0.5, 1.0]
    xticklabels1 = ["0", "0.5", "B"]
    setup_axis(ax1, 0.0, B, xticks1, xticklabels1)

    ax1.set_title("Classical Interval $[0, B)$", pad=20)

    ax1.hlines(y, 0.0, B, colors=COLOR, linewidth=3)
    # 0 geschlossen
    ax1.plot(0.0, y, "o",
             color=COLOR, markersize=8,
             markeredgecolor="black", markeredgewidth=1.2, zorder=5)
    # B offen
    ax1.plot(B, y, "o",
             markerfacecolor="white", markeredgecolor=COLOR,
             markersize=8, markeredgewidth=1.5, zorder=5)

    # --- REIST [-B/2, B/2) ---
    half = B / 2.0
    xticks2 = [-0.5, 0.0, 0.5]
    xticklabels2 = [r"$-B/2$", "0", r"$+B/2$"]
    setup_axis(ax2, -half, half, xticks2, xticklabels2)

    ax2.set_title(r"REIST Interval $[-B/2, B/2)$", pad=20)

    ax2.hlines(y, -half, half, colors=COLOR, linewidth=3)
    # -B/2 geschlossen
    ax2.plot(-half, y, "o",
             color=COLOR, markersize=8,
             markeredgecolor="black", markeredgewidth=1.2, zorder=5)
    # +B/2 offen
    ax2.plot(half, y, "o",
             markerfacecolor="white", markeredgecolor=COLOR,
             markersize=8, markeredgewidth=1.5, zorder=5)

    plt.tight_layout()
    plt.savefig("REIST_Intervals_Comparison.png", dpi=300)
    plt.close(fig)


if __name__ == "__main__":
    create_comparison()
