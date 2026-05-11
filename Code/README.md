# Code

## Empirical Methodology

The empirical analysis in this paper adapts the high-frequency identification (HFI) framework of [Jarociński and Karadi (2020)](https://doi.org/10.1257/mac.20180090) to Mexican monetary policy. The estimation is conducted in MATLAB.

### Methodology Overview

1. **High-frequency surprise construction**: Changes in interest rate swap (TIIE-28) yields and stock market returns (IPC) within tight windows around Banco de México monetary policy announcements.

2. **Sign-restricted Bayesian VAR**: A monthly Bayesian VAR model with sign restrictions to decompose high-frequency surprises into:
   - Monetary Policy (MP) shocks
   - Central Bank Information (CBI) shocks
   - Response-to-News (RN) shocks

3. **Impulse response analysis**: Structural impulse responses of GDP, inflation, exchange rate, and other macroeconomic variables to each identified shock.

### Reference Implementation

The code is an adaptation of the replication package for:

> Jarociński, M. and Karadi, P. (2020). "Deconstructing Monetary Policy Surprises: The Role of Information Shocks." *American Economic Journal: Macroeconomics*, 12(2), pp. 1–43.

The original replication code is publicly available from the [AEJ: Macroeconomics website](https://www.aeaweb.org/articles?id=10.1257/mac.20180090).

### Code Availability

The MATLAB code for this paper is not included in this repository for the following reasons:

1. **Proprietary data dependencies**: The code requires access to Bloomberg terminal data (interest rate swaps, FX implied volatility) that cannot be redistributed due to licensing restrictions.

2. **Work in progress**: The codebase is under active development as part of ongoing research and will be made publicly available upon publication.

### Pre-computed Results

All figures and tables produced by the empirical analysis are included in the repository:

- `Figures/Figure_1_Mex.pdf` — High-frequency monetary policy surprises
- `Figures/Figure_2_Mex.pdf` — Bayesian VAR impulse responses
- `Figures/Figures_Mex/` — Robustness checks (24 figures)
- `Tables/Table_1_Mex.tex` — Summary statistics
- `Tables/Table_2_Mex.tex` — Variance decomposition
- `Tables/Table_3_Mex.tex` — Forecast error variance decomposition

### Software Requirements (for replication)

- **MATLAB** R2020a or later
- Econometrics Toolbox
- Statistics and Machine Learning Toolbox
