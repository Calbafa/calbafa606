#!/bin/bash

echo "========================================"
echo "Reproducing: Disentangling Monetary Policy,"
echo "Central Bank Information, and Response-to-News"
echo "Shocks: Evidence from Mexico"
echo "========================================"

# -----------------------------------------------
# 1. Empirical analysis
# -----------------------------------------------
# The Bayesian VAR estimation and impulse response
# computation were conducted in MATLAB using an
# adaptation of the Jarocinski and Karadi (2020)
# replication code (publicly available from the
# AEJ: Macroeconomics website).
#
# Pre-computed figures and tables are included in
# the repository. See Code/README.md for details.

echo ""
echo "Step 1: Empirical results"
echo "  Figures and tables are pre-computed (MATLAB)."
echo "  See Code/README.md for methodology details."
echo ""

# -----------------------------------------------
# 2. Compile LaTeX document
# -----------------------------------------------

echo "Step 2: Compiling calbafa606.tex..."
echo ""

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
export TEXMFHOME="${REPO_ROOT}/@resources/texlive/texmf-local"
export TEXINPUTS="${REPO_ROOT}/@resources/texlive/texmf-local/tex/latex//:${TEXINPUTS:-}"
export BSTINPUTS="${REPO_ROOT}/@resources/texlive/texmf-local/bibtex/bst//:${BSTINPUTS:-}"

pdflatex -interaction=nonstopmode calbafa606.tex
bibtex calbafa606 || true
pdflatex -interaction=nonstopmode calbafa606.tex
pdflatex -interaction=nonstopmode calbafa606.tex

# -----------------------------------------------
# 3. Verify output
# -----------------------------------------------

echo ""
if [ -f "calbafa606.pdf" ]; then
    echo "========================================"
    echo "Success! calbafa606.pdf has been generated."
    echo "========================================"
else
    echo "========================================"
    echo "Error: PDF generation failed."
    echo "Check that pdflatex and bibtex are installed."
    echo "========================================"
    exit 1
fi
