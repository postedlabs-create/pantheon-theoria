# RRIL → PROTOS MCP: Communication Standard

*How RRIL agents feed Protos MCP. Format, frequency, escalation.*

---

## RRIL Agents

- Analytics Trend Tracker
- RSS Feed Synthesizer
- Market & Competition Analyst
- Behavioral Analyst
- Sentiment & Brand Pulse

All RRIL agents route exclusively through Protos MCP. No RRIL agent communicates directly with Operations or Command.

---

## What Gets Routed

- Research output and intelligence reports
- Signal summaries
- Trend data
- Escalations when a signal is time-critical

---

## Format

```
RRIL REPORT
FROM: [Agent Name]
TO: Protos MCP
DATE: [YYYY-MM-DD]
FREQUENCY: [Daily / Weekly / On-trigger]
PRIORITY: [CRITICAL / HIGH / STANDARD]
SUBJECT: [One-line summary]
---
[Intelligence payload]
```

---

## Frequency

| Agent | Default Frequency |
|-------|------------------|
| Analytics Trend Tracker | Weekly + on-signal |
| RSS Feed Synthesizer | Daily |
| Market & Competition Analyst | Weekly |
| Behavioral Analyst | Weekly |
| Sentiment & Brand Pulse | Daily |

---

## Escalation

If a RRIL agent detects a CRITICAL signal (competitor launch, brand crisis, time-sensitive opportunity):
1. Flag as CRITICAL immediately — do not wait for scheduled report
2. Protos MCP routes to Operations for immediate upward escalation

---

*Last updated: 2026-03-30*
