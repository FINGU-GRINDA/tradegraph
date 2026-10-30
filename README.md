<p align="center">
  <img src="assets/logo.png" width="88" height="88" alt="TradeGraph logo">
</p>

<h1 align="center">TradeGraph</h1>

<p align="center"><b>An export sales team for consumer brands, inside the AI you already use.</b></p>

<p align="center">
  <a href="https://tradegraph.rinda.ai/?lang=en">Website</a> ·
  <a href="https://tradegraph.rinda.ai/docs?lang=en">Docs</a> ·
  <a href="https://tradegraph.rinda.ai/llms.txt">llms.txt</a> ·
  <a href="https://tradegraph.rinda.ai/support">Support</a> ·
  <a href="#한국어">한국어</a>
</p>

<p align="center">
  <a href="https://glama.ai/mcp/connectors/ai.rinda.tradegraph/tradegraph"><img src="https://glama.ai/mcp/connectors/ai.rinda.tradegraph/tradegraph/badges/score.svg" alt="TradeGraph MCP connector on Glama"></a>
  <a href="https://registry.modelcontextprotocol.io/v0.1/servers?search=ai.rinda.tradegraph"><img src="https://img.shields.io/badge/MCP_Registry-ai.rinda.tradegraph%2Ftradegraph-1d4ed8" alt="Official MCP Registry"></a>
  <img src="https://img.shields.io/badge/remote_MCP-free%2C_no_sign--up-1d4ed8" alt="Remote MCP, free, no sign-up">
</p>

![TradeGraph: connect the AI you already use and get an export sales team](https://tradegraph.rinda.ai/og-en.png?v=6)

Connect TradeGraph to Claude, ChatGPT, Codex, Cursor, Gemini CLI or any MCP client, then ask in plain words: where to sell a product first, which buyers reply, how many follow-ups to send, what to check before selling and what the shelf price will be. Answers come from UN Comtrade trade statistics and anonymized reply data from real export emails sent through RINDA, with the sources attached.

This repository holds the connection guides, plugin manifests and examples. **The server is hosted at `https://tradegraph.rinda.ai/mcp`, so there is nothing to install or run.**

## Connect

| Client | How |
| --- | --- |
| Claude Code | `claude mcp add --transport http --scope user tradegraph https://tradegraph.rinda.ai/mcp` |
| Codex | `codex mcp add tradegraph --url https://tradegraph.rinda.ai/mcp` |
| Cursor | Install this repository as a plugin, or add [`mcp.json`](mcp.json) to `~/.cursor/mcp.json` |
| Gemini CLI | `gemini extensions install https://github.com/FINGU-GRINDA/tradegraph` |
| VS Code | In `.vscode/mcp.json`: `{"servers":{"tradegraph":{"type":"http","url":"https://tradegraph.rinda.ai/mcp"}}}` |
| Claude.ai, ChatGPT and others | Add a custom connector with `https://tradegraph.rinda.ai/mcp` and no authentication |

Then try one of these in a new chat:

- "Where should we export our sunscreen first?"
- "Make an export plan for kimchi to Japan."
- "Which buyer types reply most in Vietnam?"
- "We emailed 300 US distributors about our shampoo and got 4 replies in week 5. Are we on track?"
- "If our FOB is $4 for a serum, what will the shelf price be in Germany?"
- "What blocks selling Bluetooth speakers in the EU?"

## What it can do

| Tool | What it answers |
| --- | --- |
| `gtm_plan` | **Start here.** An export plan for one product: markets to start with, buyer types that reply, follow-ups to send, checks before selling and a first email draft |
| `market_picks` | Import markets ranked by size, growth, Korea's share and reply rates |
| `buyer_targets` | Which buyer types (importers, distributors, retailers and others) reply most in each country |
| `country_brief` | A short market brief for one country |
| `export_rank` | The world's top exporters of a product and where Korea already sells |
| `market_scan` | Live UN Comtrade imports for any 4-digit HS code |
| `outreach_playbook`, `reply_pace` | Follow-up benchmarks, and a pace check for your own outreach |
| `blind_spots` | Certifications, registrations, extra duties and filings that can block a market |
| `price_ladder` | From FOB price to landed cost and shelf price |
| `find_item` | The HS code for a product name, in 10 languages |
| `export_workflow` | Step-by-step workflows for certification, FTA origin, documents, payment and buyer checks |
| `channel_plan`, `image_studio`, `video_studio` | Creator, marketplace and ad-content plans for a market |
| `live_tools` | Finds paid live-data endpoints for a job (running them needs a TradeGraph account) |

The full, always-current tool list is in [llms.txt](https://tradegraph.rinda.ai/llms.txt).

## REST API

Every tool is also a plain JSON endpoint. No key is needed.

```bash
curl -s https://tradegraph.rinda.ai/api/v1/tools/market_picks \
  -H 'Content-Type: application/json' \
  -d '{"item":"sunscreen","limit":5}'
```

More in [`examples/`](examples) and the [OpenAPI document](https://tradegraph.rinda.ai/api/v1/openapi.json).

## Data and privacy

- Free and read-only. Without an account TradeGraph never spends money; an optional account adds API keys and prepaid live-data calls.
- The server only receives the values your AI passes to a tool, such as a product and a country.
- Reply rates are an anonymous aggregate of export emails sent through RINDA. No single company or person can be identified.
- [Privacy policy](https://tradegraph.rinda.ai/privacy) · [Terms](https://tradegraph.rinda.ai/terms)

## About

TradeGraph is made by the RINDA team at [GRINDA AI Co., Ltd.](https://grinda.ai) in Daejeon, Korea. Questions and problems: [support page](https://tradegraph.rinda.ai/support) or sales@grinda.ai.

## 한국어

TradeGraph는 Claude, ChatGPT 같은 쓰던 AI에 연결하는 소비재 해외영업팀이에요. 시장 조사, 바이어 발굴, 영업 메일, 인플루언서 시딩, 현지 광고 영상, 인증과 서류까지 평소 말로 맡길 수 있어요. 연결은 무료이고 가입 없이 바로 돼요.

- 연결 주소: `https://tradegraph.rinda.ai/mcp`
- 연결 안내: <https://tradegraph.rinda.ai/docs>
- 무료 수출 도구: <https://tradegraph.rinda.ai/tools>

## License

The guides, manifests and examples in this repository are MIT licensed. Use of the hosted service is covered by the [Terms](https://tradegraph.rinda.ai/terms).
