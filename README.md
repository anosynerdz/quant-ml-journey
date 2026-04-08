# 📈 Quant ML Journey

A hands-on Python project for learning quantitative finance fundamentals — starting with stock data ingestion, visualisation, and basic risk metrics.

---

## What this project does

| Feature | Details |
|---|---|
| **Data source** | `yfinance` — 1 year of daily OHLCV data for 5 tickers |
| **Tickers** | AAPL · MSFT · GOOGL · AMZN · NVDA |
| **Charts** | Line graph · Candlestick
| **Metrics** | Annualised return, annualised volatility, approximate Sharpe ratio |

---

## Quickstart

```bash
# 1. Clone
git clone https://github.com/anosynerdz/quant-ml-journey.git
cd quant-ml-journey

# 2. Install dependencies
pip install yfinance matplotlib mplfinance pandas numpy

# 3. Run
python Stock Price performance.ipynb
```

The script auto-falls back to **realistic synthetic data** (Geometric Brownian Motion) if the network is unavailable — useful for offline development.

---

## Output files

| File | Description |
|---|---|
| `chart_line.png` | Absolute closing prices + normalised index overlay |
| `chart_candlestick.png` | Candlestick view of the last 90 trading days (dark theme) |
| `metrics.csv` | Annualised return, volatility & Sharpe for each stock |

---

## Key concepts

### Annualised Return
```
ann_return = (1 + mean_daily_return)^252 - 1
```

### Annualised Volatility
```
ann_vol = std(daily_returns) × √252
```

### Sharpe Ratio (simplified, risk-free rate = 0)
```
sharpe = ann_return / ann_vol
```

---

## Potential Roadmap

- [ ] Add benchmark comparison (SPY / S&P 500)
- [ ] Rolling volatility & correlation heatmap
- [ ] Bollinger Bands & RSI overlays
- [ ] Portfolio optimisation (Markowitz efficient frontier)
- [ ] ML-based return prediction (LSTM / XGBoost)

---

## Requirements

```
yfinance>=0.2
matplotlib>=3.7
mplfinance>=0.12
pandas>=2.0
numpy>=1.24
```

---

*Part of a self-directed quant + ML learning journey. Contributions and suggestions welcome!*
