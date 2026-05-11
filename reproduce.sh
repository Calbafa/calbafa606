#!/bin/bash

echo "========================================"
echo "Reproducing: Disentangling Monetary Policy,"
echo "Central Bank Information, and Response-to-News"
echo "Shocks: Evidence from Mexico"
echo "========================================"

# -----------------------------------------------
# 1. Setup environment
# -----------------------------------------------

if [ ! -d ".venv-darwin" ]; then
    echo "Creating virtual environment..."
    bash reproduce/reproduce_environment_comp_uv.sh <<EOF
n
EOF
fi

if [ -f ".venv-darwin/bin/activate" ]; then
    echo "Activating environment..."
    source .venv-darwin/bin/activate
fi

# -----------------------------------------------
# 2. Empirical analysis
# -----------------------------------------------
# The Bayesian VAR estimation and impulse response
# computation were conducted in MATLAB. Pre-computed
# figures and tables are included in the repository.
# See Code/Empirical/ for details.

echo "Figures and tables are pre-computed (MATLAB)."

# -----------------------------------------------
# 3. Compile LaTeX document
# -----------------------------------------------

echo "Compiling calbafa606.tex..."

pdflatex -interaction=nonstopmode calbafa606.tex
bibtex calbafa606 || true
pdflatex -interaction=nonstopmode calbafa606.tex
pdflatex -interaction=nonstopmode calbafa606.tex

# -----------------------------------------------
# 4. Verify output
# -----------------------------------------------

if [ -f "calbafa606.pdf" ]; then
    echo "========================================"
    echo "Success! calbafa606.pdf has been generated."
    echo "========================================"
else
    echo "========================================"
    echo "Error: PDF generation failed."
    echo "========================================"
    exit 1
fi
