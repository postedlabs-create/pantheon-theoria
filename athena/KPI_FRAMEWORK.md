# KPI_FRAMEWORK.md — Theoria Division KPI Tracking

## Primary KPIs (Track Every Cycle)

### Intelligence Layer (Argus)
| KPI | Description | Target | Source |
|-----|-------------|--------|--------|
| Leads Identified | Total potential POSTED users surfaced | TBD | Argus daily report |
| Lead Quality Score | Average quality rating of leads (1–10 scale) | TBD | Argus scoring |
| Platform Coverage | Reddit / Discord / Whop / Forums — active? | All 4 | Argus report |
| Competitor Mentions | Buffer / Hootsuite / Later / Sprout Social flagged | TBD | Argus report |
| Community Sentiment | Tone toward POSTED where detected | Positive / Neutral / Negative | Argus report |

### Outreach Layer (Calliope)
| KPI | Description | Target | Source |
|-----|-------------|--------|--------|
| Outreach Sent | DMs dispatched this cycle | TBD | Calliope report |
| Response Rate | Replies received / outreach sent | TBD | Calliope report |
| High-Value Conversations | Flagged by Calliope as priority | TBD | Calliope report |
| Conversion Rate | Lead → Engaged Prospect | TBD | Calliope report |
| Pipeline Volume | Total active prospects in outreach flow | TBD | Calliope report |

### Division Health (Athena)
| KPI | Description | Notes |
|-----|-------------|-------|
| Agent Uptime | Are operational agents running as expected? | Flag any gaps |
| Report Timeliness | Did each agent deliver reports on schedule? | Track misses |
| Decision Backlog | Open decisions awaiting Arbiter | Escalate if >48h stale |

---

## Competitor Tracking

Monitor these four at all times:
- **Buffer** — most commonly cited; 1 account per platform limit is POSTED's key differentiator
- **Hootsuite** — enterprise-focused; track mention volume and sentiment
- **Later** — visual-first; track feature comparisons
- **Sprout Social** — expensive; track pricing complaints as lead signals

Track: mention volume, sentiment, user complaints, feature gaps mentioned in community.

---

## Quality Score Rubric (Argus Leads)

| Score | Criteria |
|-------|----------|
| 9–10 | Explicitly seeking multi-account solution; active buyer signal |
| 7–8 | Frustrated with competitor limit; open to alternatives |
| 5–6 | General social media management interest; platform fit unclear |
| 3–4 | Tangential mention; low conversion probability |
| 1–2 | Noise; no buyer signal |

---

## Cycle Benchmarks

Targets are TBD until baseline data is established. Once Argus and Calliope have completed their first 3 cycles, Athena will establish baseline targets and flag deviations >20% as noteworthy.

---

## KPI Log Format

Stored in: `~/.openclaw/workspace/athena/kpi_log/YYYY-MM-DD.json`

```json
{
  "cycle": "YYYY-MM-DD",
  "argus": {
    "leads_identified": 0,
    "avg_quality_score": 0.0,
    "platform_coverage": ["reddit", "discord", "whop"],
    "competitor_mentions": {
      "buffer": 0,
      "hootsuite": 0,
      "later": 0,
      "sprout_social": 0
    },
    "community_sentiment": "neutral"
  },
  "calliope": {
    "outreach_sent": 0,
    "responses_received": 0,
    "response_rate": 0.0,
    "high_value_conversations": 0,
    "conversion_rate": 0.0
  },
  "division_health": {
    "agents_operational": [],
    "decision_backlog": 0
  }
}
```
