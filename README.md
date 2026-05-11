# Disentangling Monetary Policy, Central Bank Information, and Response-to-News Shocks  
## Evidence from an Emerging Market (Mexico)

This repository contains a reproducible research project studying the transmission of monetary policy in Mexico using high-frequency identification techniques.

The project is structured as a REMARK (Replications and Reproducible Research in Economics) repository and is based on an original empirical research paper.

---

## 🎯 Research Question

How do monetary policy shocks affect macroeconomic and financial variables in an emerging market economy like Mexico?

More importantly:

👉 What happens when we disentangle monetary policy shocks from other information embedded in central bank announcements?

---

## 🧠 Key Contribution

This paper decomposes high-frequency monetary policy surprises into three components:

- **Monetary Policy (MP) shocks**  
- **Central Bank Information (CBI) shocks**  
- **Response-to-News (RN) shocks**

We show that failing to separate these components leads to biased and counterintuitive results, such as:

- Output increasing after contractionary shocks  
- Inflation rising after rate hikes  
- Currency depreciation instead of appreciation  

Once shocks are properly disentangled:

- Output and prices decline (hump-shaped)  
- Exchange rate appreciates  
- Inflation expectations remain anchored  

---

## 📊 Empirical Framework

We use high-frequency identification (HFI) around central bank announcements combined with time-series methods (e.g., VAR/local projections).

Baseline representation:

$$
mps_t = \alpha + X_{t-}'\beta + u_t
$$

Where:

- $mps_t$ = monetary policy surprise  
- $X_{t-}$ = macroeconomic and financial controls  
- $u_t$ = error term  

---

## 📊 Data and Variables

The analysis includes:

- High-frequency interest rate surprises  
- Target rate shocks  
- Forward guidance (FG) shocks  

Macroeconomic outcomes:

- Output (Δ log output, 6 months)  
- Inflation (Δ log CPI, 6 months)  
- Exchange rates  
- Inflation expectations  

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
| `Subfiles/Parameterization.tex` | VAR model for a small open economy |
| `Subfiles/Comparing-policies.tex` | Impulse response functions |
| `Subfiles/Conclusion.tex` | Conclusion |
| `Subfiles/Appendix-HANK.tex` | Appendix A: Bayesian estimation |
| `Subfiles/Appendix-NoSplurge.tex` | Appendix B: Supplemental results |

---

## Figures and Tables

- **Main figures**: `Figures/Figure_1_Mex.pdf`, `Figures/Figure_2_Mex.pdf`
- **Robustness figures**: `Figures/Figures_Mex/` (24 additional figures)
- **Tables**: `Tables/Table_1_Mex.tex`, `Tables/Table_2_Mex.tex`, `Tables/Table_3_Mex.tex`

---

## Reproduction

To reproduce the paper PDF:

```bash
bash reproduce.sh
```

This script compiles the LaTeX document. The empirical analysis (Bayesian VAR estimation, impulse response computation) was conducted in MATLAB, and its outputs (figures and tables) are included in the repository.

---

## Repository Structure

```
calbafa606/
├── calbafa606.tex          # Main LaTeX document
├── HAFiscal.bib            # Bibliography
├── Subfiles/               # Paper sections (modular LaTeX subfiles)
├── Figures/                # Main figures (PDF)
│   └── Figures_Mex/        # Robustness check figures
├── Tables/                 # LaTeX tables
├── Code/                   # Empirical code
│   └── Empirical/          # MATLAB/estimation scripts
├── Data/                   # Data description
├── REMARK.md               # REMARK metadata
├── CITATION.cff            # Citation information
├── reproduce.sh            # Reproduction script
└── README.md               # This file
```

---

## References

- Jarociński, M. and Karadi, P. (2020). "Deconstructing Monetary Policy Surprises." *AEJ: Macroeconomics*.
- Jarociński, M. and Karadi, P. (2025). "Central Bank Information Effects and Transitory Announcements." *American Economic Review*.
- Bauer, M.D. and Swanson, E.T. (2023). "An Alternative Explanation for the 'Fed Information Effect'." *American Economic Review*.
- Gürkaynak, R.S., Sack, B., and Swanson, E.T. (2005). "Do Actions Speak Louder Than Words?" *IJCB*.

---

## Author

**Carlos Alba**  
Department of Economics, Johns Hopkins University  
Email: calbafa1@jh.edu

---

## License

See [LICENSE](LICENSE) for details.
