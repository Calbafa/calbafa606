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
# 3. Compile standalone table PDFs
# -----------------------------------------------

echo ""
echo "Step 3: Compiling standalone table PDFs..."

for table in Table_1_Mex Table_2_Mex Table_3_Mex; do
    echo "  Compiling ${table}..."
    cat > "Tables/${table}_standalone.tex" <<WRAPPER
\\documentclass[12pt]{article}
\\usepackage[T1]{fontenc}
\\usepackage{amsmath,amssymb}
\\usepackage{booktabs}
\\usepackage{graphicx}
\\usepackage[margin=1in]{geometry}
\\usepackage{hyperref}
\\pagestyle{empty}
\\begin{document}
\\input{Tables/${table}}
\\end{document}
WRAPPER
    pdflatex -interaction=nonstopmode "Tables/${table}_standalone.tex" > /dev/null 2>&1
    mv "${table}_standalone.pdf" "Tables/${table}.pdf" 2>/dev/null
    rm -f "${table}_standalone".{tex,aux,log,out} "Tables/${table}_standalone.tex"
done

# -----------------------------------------------
# 4. Verify output
# -----------------------------------------------

echo ""
FAIL=0

if [ -f "calbafa606.pdf" ]; then
    echo "[OK] calbafa606.pdf generated."
else
    echo "[FAIL] calbafa606.pdf not generated."
    FAIL=1
fi

for table in Table_1_Mex Table_2_Mex Table_3_Mex; do
    if [ -f "Tables/${table}.pdf" ]; then
        echo "[OK] Tables/${table}.pdf generated."
    else
        echo "[FAIL] Tables/${table}.pdf not generated."
        FAIL=1
    fi
done

echo ""
if [ $FAIL -eq 0 ]; then
    echo "========================================"
    echo "Success! All PDFs have been generated."
    echo "========================================"
else
    echo "========================================"
    echo "Warning: Some PDFs failed to generate."
    echo "Check that pdflatex and bibtex are installed."
    echo "========================================"
    exit 1
fi
