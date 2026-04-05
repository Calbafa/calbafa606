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

## 📄 Paper Structure

Main LaTeX file:
