#!/bin/bash
# reproduce.sh — MexicoMP REMARK reproduction script
#
# This script compiles the paper "Disentangling Conventional and Unconventional
# Monetary Policy Shocks in an Emerging Market" from its LaTeX sources.
#
# IMPORTANT NOTE ON REPRODUCIBILITY:
# The empirical results (Bayesian VAR impulse responses, high-frequency
# identification of monetary policy surprises, CBI/RN decomposition) were
# estimated using proprietary high-frequency financial data from Bloomberg
# and Banco de México. The estimation code is not included in this repository
# because the underlying data cannot be redistributed.
#
# What this script DOES reproduce:
#   - Compiles all LaTeX tables from source
#   - Compiles the main paper PDF from Subfiles
#   - Verifies that all figures referenced in the paper are present
#
# What this script does NOT reproduce:
#   - The Bayesian VAR estimation (requires proprietary data)
#   - The high-frequency surprise construction (requires Bloomberg data)
#   - Figure generation from raw data (pre-generated PDFs are included)
#
# The pre-generated figures in source_jmp/Paper_Information_Shocks_Mexico_v19/
# and Figures/ correspond to the results reported in the paper.

set -e

echo "====================================="
echo " Reproducing MexicoMP paper"
echo "====================================="

# -------------------------------
# 1. Verify figures are present
# -------------------------------
echo ""
echo "[Step 1/3] Verifying figures..."

MISSING=0
for fig in \
    "source_jmp/Paper_Information_Shocks_Mexico_v19/TR-approaches.pdf" \
    "source_jmp/Paper_Information_Shocks_Mexico_v19/FG-approaches.pdf" \
    "source_jmp/Paper_Information_Shocks_Mexico_v19/TR-2024m12-sincerores.pdf" \
    "source_jmp/Paper_Information_Shocks_Mexico_v19/FG-2024m12_conTR-sincerores.pdf" \
    "source_jmp/Paper_Information_Shocks_Mexico_v19/Benchmark.pdf" \
    "Tables/Table1_Mexico.tex"; do
    if [ ! -f "$fig" ]; then
        echo "  WARNING: Missing $fig"
        MISSING=$((MISSING + 1))
    fi
done

if [ "$MISSING" -eq 0 ]; then
    echo "  All key figures and tables present."
else
    echo "  $MISSING file(s) missing — paper may not compile correctly."
fi

# -------------------------------
# 2. Tables
# -------------------------------
echo ""
echo "[Step 2/3] Compiling tables..."

cd Tables

if [ -f "batch_compile_all_tables.sh" ]; then
    bash batch_compile_all_tables.sh
else
    echo "  No table compilation script found, skipping..."
fi

cd ..

# -------------------------------
# 3. Compile Paper
# -------------------------------
echo ""
echo "[Step 3/3] Compiling main paper..."

latexmk -pdf -f -g MexicoMP.tex

echo ""
echo "====================================="
echo " DONE: MexicoMP.pdf compiled"
echo "====================================="
echo ""
echo "Note: Figures are pre-generated from proprietary data."
echo "See reproduce.sh header for reproducibility details."
