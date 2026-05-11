# Data

This paper uses the following data sources for its empirical analysis:

## High-Frequency Financial Data

- **Interest rate swaps (TIIE-28)**: Maturities of 1, 3, 6, 9, and 12 months around monetary policy announcements. Source: Bloomberg.
- **Mexican Stock Market Index (IPC)**: Close-to-close changes around policy announcements. Source: Grupo BMV.
- **Nominal peso-USD exchange rate**: Source: Banco de Mexico.
- **FX implied volatility**: One-month options on the Mexican peso. Source: Bloomberg.

## Macroeconomic Variables (Monthly)

- **Interpolated GDP**: Monthly GDP series using Kalman filter (Elizondo, 2012).
- **Core CPI**: Seasonally adjusted with X13-ARIMA. Source: INEGI.
- **Government bond yields**: 1-year and 10-year zero-coupon yields. Source: Banco de Mexico.
- **Inflation expectations**: 12-month-ahead from the Survey of Professional Forecasters. Source: Banco de Mexico.

## Exogenous Foreign Controls

- **U.S. 2-year Treasury yield, S&P 500, VIX, Industrial Production, CPI**: Source: FRED / Bloomberg.
- **Brent crude oil price**: Source: FRED.

## Sample Period

January 2002 -- December 2024 (214 scheduled monetary policy announcements).

## Data Availability

The high-frequency financial data used in this paper are obtained from commercial data providers (Bloomberg) and are subject to licensing restrictions. Macroeconomic data from Banco de Mexico, INEGI, and FRED are publicly available.
