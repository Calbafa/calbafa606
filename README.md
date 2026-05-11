# Disentangling Monetary Policy, Central Bank Information, and Response-to-News Shocks: Evidence from Mexico

This repository contains a reproducible research project studying the transmission of monetary policy in Mexico using high-frequency identification techniques.

The project is structured as a [REMARK](https://github.com/econ-ark/REMARK) (Replications and Reproducible Research in Economics) repository, adapted from the [HAFiscal](https://github.com/llorracc/HAFiscal) project template.

---

## Research Question

How do monetary policy shocks affect macroeconomic and financial variables in an emerging market economy like Mexico? And what happens when we disentangle monetary policy shocks from other information embedded in central bank announcements?

## Key Contribution

This paper decomposes high-frequency monetary policy surprises around Banco de México announcements into three structural components:

- **Monetary Policy (MP) shocks**: Exogenous changes in the policy rate
- **Central Bank Information (CBI) shocks**: Signals about the state of the economy revealed by the central bank's decision
- **Response-to-News (RN) shocks**: Responses to publicly available information that markets had not yet fully priced in

We show that failing to separate these components leads to biased impulse responses (e.g., output increasing after contractionary shocks). Once shocks are properly disentangled, the responses align with standard theory: output and prices decline, the exchange rate appreciates, and inflation expectations remain anchored.

## Methodology

The empirical framework adapts the high-frequency identification approach of [Jarociński and Karadi (2020)](https://doi.org/10.1257/mac.20180090) to Mexican data. The analysis combines:

1. **High-frequency surprise construction** around 214 scheduled Banco de México announcements (2002–2024)
2. **Sign-restricted Bayesian VAR** to decompose surprises into MP, CBI, and RN shocks
3. **Impulse response analysis** of macroeconomic and financial variables to each identified shock

### Data

The analysis uses high-frequency financial data (interest rate swaps, stock market returns, exchange rates) around monetary policy announcements, combined with monthly macroeconomic variables. Some data sources are proprietary (Bloomberg); public sources include Banco de México, INEGI, and FRED. See [`Data/README.md`](Data/README.md) for complete details.

### Code

The Bayesian VAR estimation was conducted in MATLAB, adapting the replication code of [Jarociński and Karadi (2020)](https://www.aeaweb.org/articles?id=10.1257/mac.20180090). The code is not included in this repository due to proprietary data dependencies and ongoing development. Pre-computed figures and tables are provided. See [`Code/README.md`](Code/README.md) for methodology details.

---

## Paper Structure

Main LaTeX file: `calbafa606.tex`

The paper is organized as modular subfiles:

| File | Content |
|------|---------|
| `Subfiles/MexicoMP-titlepage.tex` | Title page, abstract, and author information |
| `Subfiles/Intro.tex` | Introduction |
| `Subfiles/literature.tex` | Related literature |
| `Subfiles/Model.tex` | High-frequency identification of MP, RN, and CBI shocks |
| `Subfiles/VARModel.tex` | VAR model for a small open economy |
| `Subfiles/ImpulseResponses.tex` | Impulse response functions |
| `Subfiles/Conclusion.tex` | Conclusion |
| `Subfiles/Appendix-BayesianEstimation.tex` | Appendix A: Bayesian estimation details |
| `Subfiles/Appendix-Robustness.tex` | Appendix B: Supplemental results and robustness checks |

## Figures and Tables

### Main Figures

- `Figures/Figure_1_Mex.pdf` — High-frequency monetary policy surprises
- `Figures/Figure_2_Mex.pdf` — Bayesian VAR impulse responses

### Robustness Figures

The `Figures/Figures_Mex/` directory contains 64 additional figures documenting robustness checks, including alternative sample periods, lag structures, variable specifications, prior sensitivity, and identification schemes.

### Tables

- `Tables/Table_1_Mex.tex` — Regressions of high-frequency monetary policy surprises on macroeconomic and financial news
- `Tables/Table_2_Mex.tex` — Impact responses of target-rate and stock market surprises
- `Tables/Table_3_Mex.tex` — Impact responses of FG and stock market surprises
- `Tables/Table_DataDesc_Mex.tex` — Data description
- `Tables/Table_IRF_TR_Mex.tex` — Impulse responses to MP, CBI, and RN shocks (target-rate)
- `Tables/Table_IRF_FG_Mex.tex` — Impulse responses to MP, CBI, and RN shocks (FG)

---

## Reproduction

To reproduce the paper PDF:

```bash
bash reproduce.sh
```

This script compiles the LaTeX document using `pdflatex` and `bibtex`. The empirical analysis (Bayesian VAR estimation and impulse responses) was conducted in MATLAB; pre-computed figures and tables are included in the repository.

### Requirements

- `pdflatex` and `bibtex` (any standard TeX distribution, e.g. TeX Live or MiKTeX)
- No additional software is needed to compile the paper

### Docker Reproduction

For fully containerized reproduction:

```bash
docker build -t calbafa606 .
docker run --rm -v $(pwd)/output:/home/project calbafa606
```

### What the script does

1. Compiles `calbafa606.tex` with `pdflatex`
2. Runs `bibtex` to process bibliography references
3. Recompiles twice to resolve cross-references
4. Verifies that `calbafa606.pdf` was generated successfully

---

## Repository Structure

```
calbafa606/
├── calbafa606.tex          # Main LaTeX document
├── calbafa606.bib          # Bibliography database
├── reproduce.sh            # Reproduction script
├── Dockerfile              # Docker containerization for reproducibility
├── binder/
│   └── environment.yml     # Conda environment specification
├── Subfiles/               # Paper sections (modular LaTeX subfiles)
│   ├── MexicoMP-titlepage.tex
│   ├── Intro.tex
│   ├── literature.tex
│   ├── Model.tex
│   ├── VARModel.tex
│   ├── ImpulseResponses.tex
│   ├── Conclusion.tex
│   ├── Appendix-BayesianEstimation.tex
│   └── Appendix-Robustness.tex
├── Figures/                # Main figures (PDF)
│   ├── Figure_1_Mex.pdf
│   ├── Figure_2_Mex.pdf
│   └── Figures_Mex/        # Robustness check figures (64 PDFs)
├── Tables/                 # LaTeX tables
│   ├── Table_1_Mex.tex
│   ├── Table_2_Mex.tex
│   ├── Table_3_Mex.tex
│   ├── Table_DataDesc_Mex.tex
│   ├── Table_IRF_TR_Mex.tex
│   └── Table_IRF_FG_Mex.tex
├── Code/                   # Empirical code documentation
│   └── README.md
├── Data/                   # Data sources documentation
│   └── README.md
├── @local/                 # Project-specific LaTeX configuration
├── @resources/             # Shared LaTeX resources (econark document class)
├── REMARK.md               # REMARK metadata
├── CITATION.cff            # Citation information (CFF 1.2.0)
├── codemeta.json           # CodeMeta structured metadata
├── LICENSE                 # Apache License 2.0
└── README.md               # This file
```

---

## References

- Jarociński, M. and Karadi, P. (2020). "Deconstructing Monetary Policy Surprises: The Role of Information Shocks." *American Economic Journal: Macroeconomics*, 12(2), pp. 1–43.
- Jarociński, M. and Karadi, P. (2025). "Disentangling Monetary Policy, Central Bank Information, and Fed Response-to-News Shocks." CEPR Discussion Paper No. 19923.
- Bauer, M.D. and Swanson, E.T. (2023). "An Alternative Explanation for the 'Fed Information Effect'." *American Economic Review*, 113(3), pp. 664–700.
- Gürkaynak, R.S., Sack, B., and Swanson, E.T. (2005). "Do Actions Speak Louder Than Words? The Response of Asset Prices to Monetary Policy Actions and Statements." *International Journal of Central Banking*, 1(1), pp. 55–93.

---

## Author

**Carlos Alba**
Department of Economics, Johns Hopkins University
Email: calbafa1@jh.edu

## License

See [LICENSE](LICENSE) for details (Apache License 2.0).
