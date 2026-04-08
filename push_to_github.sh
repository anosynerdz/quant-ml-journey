#!/bin/bash
# ─────────────────────────────────────────────────────
#  First-time GitHub push for quant-ml-journey
#  Run this from the project folder after cloning/creating the repo
# ─────────────────────────────────────────────────────

# 1. Initialise git
git init
git branch -M main

# 2. Stage everything
git add stock_analysis.py README.md requirements.txt

# 3. First commit
git commit -m "feat: initial stock analysis – line & candlestick charts

- Pull 1-year OHLCV data for AAPL, MSFT, GOOGL, AMZN, NVDA via yfinance
- Charts: line (abs + normalised) and 90-day candlestick (dark)
- Metrics: annualised return, volatility, Sharpe ratio → metrics.csv"

# 4. Add remote (replace <username> with yours)
git remote add origin https://github.com/anosynerdz/quant-ml-journey.git

# 5. Push
git push -u origin main

echo ""
echo "✓ Pushed! Visit https://github.com/anosynerdz/quant-ml-journey"
