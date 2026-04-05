#!/bin/bash

echo "========================================"
echo "Reproducing calbafa606 paper"
echo "========================================"

# -------------------------------
# 1. Setup environment (non-interactive)
# -------------------------------

if [ ! -d ".venv-darwin" ]; then
    echo "Creating virtual environment..."
    bash reproduce_environment_comp_uv.sh <<EOF
n
EOF
fi

# Activate environment (no interactive shell)
echo "Activating environment..."
source .venv-darwin/bin/activate

# -------------------------------
# 2. DISABLE HAFiscal pipelines
# -------------------------------
# (We are NOT running model code or generating tables)

# Example of things we are skipping:
# python Code/...
# make tables
# run models

echo "Skipping model generation (manual tables in use)"

# -------------------------------
# 3. Compile YOUR paper
# -------------------------------

echo "Compiling calbafa606.tex..."

pdflatex calbafa606.tex
bibtex calbafa606 || true
pdflatex calbafa606.tex
pdflatex calbafa606.tex

# -------------------------------
# 4. Done
# -------------------------------

echo "========================================"
echo "Done! PDF should be ready."
echo "========================================"