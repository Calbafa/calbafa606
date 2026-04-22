#!/bin/bash

set -e

echo "====================================="
echo " Reproducing MexicoMP paper"
echo "====================================="

# -------------------------------
# 1. Tables
# -------------------------------
echo "Compiling tables..."

cd Tables

if [ -f "batch_compile_all_tables.sh" ]; then
    bash batch_compile_all_tables.sh
else
    echo "No table script found, skipping..."
fi

cd ..

# -------------------------------
# 2. Figures
# -------------------------------
echo "Checking figures..."

cd Figures

for file in *.tex; do
    if [ -f "$file" ]; then
        echo "Compiling figure: $file"
        latexmk -pdf -f "$file"
    fi
done

cd ..

# -------------------------------
# 3. Compile Paper (FORCED)
# -------------------------------
echo "Compiling main paper..."

latexmk -pdf -f -g MexicoMP.tex

echo "====================================="
echo " DONE: MexicoMP compiled successfully"
echo "====================================="