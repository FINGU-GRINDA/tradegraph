#!/usr/bin/env sh
# TradeGraph REST examples. Free, no API key needed.
# Every MCP tool is also POST https://tradegraph.rinda.ai/api/v1/tools/<tool>.
# OpenAPI: https://tradegraph.rinda.ai/api/v1/openapi.json
set -eu
BASE=https://tradegraph.rinda.ai/api/v1/tools

# Where to sell sunscreen first (import size, growth, Korea's share, reply rates)
curl -s "$BASE/market_picks" -H 'Content-Type: application/json' \
  -d '{"item":"sunscreen","limit":5}'
echo

# The HS code for a product name
curl -s "$BASE/find_item" -H 'Content-Type: application/json' \
  -d '{"query":"kimchi"}'
echo
