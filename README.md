# MexicoMP — Disentangling Conventional and Unconventional Monetary Policy Shocks in an Emerging Market

[![Powered by Econ-ARK](./@resources/econ-ark/PoweredByEconARK.svg)](https://econ-ark.org)
[![License](https://img.shields.io/badge/License-See%20LICENSE%20file-blue.svg)](LICENSE)

**Paper**: *Disentangling Conventional and Unconventional Monetary Policy Shocks in an Emerging Market*
**Author**: Carlos Alba
**Date**: February 2026
**Keywords**: monetary policy, high-frequency identification, central bank information, response to news, forward guidance, Bayesian VAR, emerging market economies, Mexico

---

## Abstract

This paper analyzes the macroeconomic effects of innovations to the central bank's target policy rate and forward guidance (FG) in an emerging market economy. For each policy tool, we disentangle pure monetary policy innovations from central bank information (CBI) and central bank response-to-news (RN) components embedded in high-frequency monetary policy surprises. We show that, when CBI and RN components are not isolated, contractionary target-rate shocks exhibit the familiar output, price, and exchange-rate puzzles and are followed by a counterintuitive rise in inflation expectations, while contractionary FG shocks appear to generate disproportionately large and fast real effects. Once CBI and RN components are isolated, the estimated effects of contractionary target-rate shocks become broadly consistent with standard monetary transmission mechanisms, featuring delayed contractions in output and prices, an appreciation of the domestic currency, and well-anchored inflation expectations. In turn, the effects of FG shocks become more conservative and broadly similar to those of pure target-rate shocks. Notably, RN components play asymmetric contamination roles across policy instruments: they tend to attenuate the contractionary effects of target-rate shocks, but amplify and accelerate the estimated effects of FG innovations.

---

## What This REMARK Reproduces

This REMARK compiles the paper from its LaTeX sources. The paper's empirical results are based on:

1. **High-frequency identification of monetary policy surprises** — changes in interest rate swaps around Banco de México announcements (January 2002–December 2024), decomposed into target-rate and forward guidance surprises following Gürkaynak et al. (2005).

2. **CBI and RN decomposition** — following Jarociński and Karadi (2025) and Bauer and Swanson (2023), the surprises are decomposed into pure monetary policy shocks, central bank information (CBI) shocks, and response-to-news (RN) shocks using stock price co-movements.

3. **Monthly Bayesian VAR** — impulse response functions tracing the dynamic effects of each shock type on output, prices, exchange rates, interest rates, and inflation expectations.

### Reproducibility note

The empirical estimation uses proprietary high-frequency financial data from Bloomberg and Banco de México that cannot be redistributed. Pre-generated figures from the estimation are included in the repository. See `reproduce.sh` for details.

---

## Repository Structure

```
calbafa606/
├── MexicoMP.tex              # Main paper entry point
├── Subfiles/                 # Paper sections (LaTeX subfiles)
│   ├── HAFiscal-titlepage.tex  # Title page (adapted for MexicoMP)
│   ├── Intro.tex               # Introduction
│   ├── literature.tex          # Related literature
│   ├── Model.tex               # Identification strategy and model
│   ├── Parameterization.tex    # Data and VAR specification
│   ├── Comparing-policies.tex  # Empirical results
│   ├── HANK.tex                # Additional analysis
│   └── Conclusion.tex          # Conclusion
├── Tables/
│   └── Table1_Mexico.tex     # Exogeneity test (Table 1)
├── source_jmp/               # JMP paper source and pre-generated figures
│   ├── jmp_overleaf.tex        # Original Overleaf source
│   └── Paper_Information_Shocks_Mexico_v19/
│       ├── TR-*.pdf            # Target-rate IRF figures
│       ├── FG-*.pdf            # Forward guidance IRF figures
│       └── Benchmark*.pdf      # Benchmark specification figures
├── reproduce.sh              # Reproduction script (compiles paper)
├── REMARK.md                 # REMARK metadata
├── CITATION.cff              # Citation metadata
├── binder/
│   └── environment.yml       # Conda environment specification
└── README.md                 # This file
```

---

## Quick Start

### Prerequisites

- LaTeX distribution (TeX Live or MacTeX) with `latexmk`
- The `econark` LaTeX document class (included in `@resources/`)

### Compile the paper

```bash
./reproduce.sh
```

This compiles `MexicoMP.pdf` from the LaTeX subfiles. The pre-generated figures from the empirical estimation are included in the repository.

### View the compiled paper

The output is `MexicoMP.pdf` in the repository root.

---

## Main Results

The paper's key findings:

- **Target-rate shocks**: Without disentangling CBI and RN, contractionary shocks exhibit the output, price, and exchange-rate puzzles. Once decomposed, pure monetary policy shocks produce responses consistent with standard transmission: delayed output/price contractions, currency appreciation, and anchored inflation expectations.

- **Forward guidance shocks**: Raw FG surprises appear to generate disproportionately large and fast effects (consistent with the "forward guidance puzzle"). Once RN is isolated, FG effects become more conservative and similar to target-rate shocks.

- **Asymmetric contamination**: RN components attenuate target-rate transmission but amplify FG transmission — a novel finding for emerging markets.

---

## Related Literature

This paper builds on:

- Gürkaynak, Sack, and Swanson (2005) — target vs. path factor decomposition
- Jarociński and Karadi (2020, 2025) — central bank information effects
- Bauer and Swanson (2023a, 2023b) — response-to-news effects
- Swanson (2021, 2024) — FG shock identification for the U.S.

---

## Citation

If you use this repository, please cite:

```bibtex
@unpublished{alba2026mexico,
  title   = {Disentangling Conventional and Unconventional Monetary
             Policy Shocks in an Emerging Market},
  author  = {Alba, Carlos},
  year    = {2026},
  note    = {Job Market Paper, Johns Hopkins University}
}
```

---

## License

See [LICENSE](LICENSE) for details.

---

## Acknowledgments

This REMARK uses infrastructure adapted from [HAFiscal](https://github.com/econ-ark/HAFiscal) (Carroll, Crawley, Du, Frankovic, and Tretvoll, 2025). The LaTeX document class and resource framework are from [Econ-ARK](https://econ-ark.org).
