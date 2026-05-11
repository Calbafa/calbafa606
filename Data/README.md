# Data

## Overview

This paper uses high-frequency financial data and monthly macroeconomic variables to identify and analyze monetary policy shocks in Mexico. The data covers 214 scheduled Banco de México monetary policy announcements from January 2002 to December 2024.

## Data Sources

### High-Frequency Financial Data (Event Study)

| Variable | Description | Source | Access |
|----------|-------------|--------|--------|
| TIIE-28 swaps | Interest rate swaps at 1, 3, 6, 9, 12-month maturities | Bloomberg | Proprietary |
| IPC index | Mexican Stock Market Index (close-to-close) | Grupo BMV | Proprietary |
| MXN/USD | Nominal peso-dollar exchange rate | Banco de México | Public |
| FX implied vol. | 1-month options on MXN | Bloomberg | Proprietary |

### Macroeconomic Variables (Monthly VAR)

| Variable | Description | Source | Access |
|----------|-------------|--------|--------|
| GDP | Interpolated monthly GDP (Kalman filter; Elizondo, 2012) | INEGI / Author | Public (raw) |
| Core CPI | Seasonally adjusted (X13-ARIMA) | INEGI | Public |
| Gov. bond yields | 1-year and 10-year zero-coupon | Banco de México | Public |
| Inflation exp. | 12-month-ahead from Survey of Professional Forecasters | Banco de México | Public |

### Exogenous Foreign Controls

| Variable | Source | Access |
|----------|--------|--------|
| U.S. 2-year Treasury yield | FRED | Public |
| S&P 500 | FRED / Bloomberg | Public |
| VIX | FRED | Public |
| U.S. Industrial Production | FRED | Public |
| U.S. CPI | FRED | Public |
| Brent crude oil price | FRED | Public |

## Data Availability

**Publicly available data**: Macroeconomic series from Banco de México, INEGI, and FRED can be freely downloaded from each institution's website.

**Proprietary data**: The high-frequency financial data (Bloomberg terminal data for TIIE-28 swaps, IPC intraday, and FX implied volatility) are subject to licensing restrictions and cannot be redistributed. Researchers with Bloomberg access can replicate the dataset using the tickers and event windows described in Section 2 of the paper.

## Sample Period

- **Event study**: January 2002 – December 2024 (214 scheduled monetary policy announcements)
- **Monthly VAR**: January 2002 – December 2024
