# ARGUS: Standard Scan Report Format

*Output format for each discrete scan run.*

---

## Format

```
# ARGUS SCAN REPORT
Agent: Argus
Scan ID: ARGUS_SCAN_YYYY-MM-DD_NNN
Date: YYYY-MM-DD
Platform: [Reddit / X / Forum / Web]
Scan Type: [Competitor Monitor / Keyword Search / Community Watch / Full Sweep]

---

## SCAN PARAMETERS
Keywords used: [list]
Communities / Subreddits: [list]
Time window: [Last 24h / 7d / 30d]
Total posts reviewed: [#]

---

## SIGNAL SUMMARY

| Priority | Count |
|----------|-------|
| 🔴 High | # |
| 🟡 Medium | # |
| 🟢 Low | # |
| ⬜ Noise | # |

---

## FLAGGED THREADS

### 🔴 HIGH: [Thread Title]
URL: [link]
Platform: [name]
Date: [post date]
Score: [#]/10
Signal: [One sentence — why this is high priority]
Action: [Calliope handoff / Athena report / Monitor]

### 🟡 MEDIUM: [Thread Title]
URL: [link]
Platform: [name]
Date: [post date]
Score: [#]/10
Signal: [One sentence]
Action: [Include in daily report / Monitor]

### 🟢 LOW: [Thread Title]
[Title | URL | Score | One-line signal]

---

## SCAN NOTES
[Any anomalies, platform behavior, or signal quality observations]

---
Scan completed by Argus — Theoria Division
```

---

*Last updated: 2026-03-30*
