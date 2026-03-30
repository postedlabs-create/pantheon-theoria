# ARGUS SCAN PLAYBOOK
## How to Run a Reddit Intelligence Scan

This document defines how Argus conducts a scan session from start to finish.

---

## Step 1 — Select Scan Focus

Choose a focus for the session. Options:

| Focus | Description |
|-------|-------------|
| **Competitor Pain** | Search for Buffer/Hootsuite frustration and people seeking alternatives |
| **Multi-Account Demand** | Search for people managing multiple accounts needing a better tool |
| **Clipper Ecosystem** | Search for clip account operators managing volume |
| **Agency Ecosystem** | Search for agencies managing multiple clients' social accounts |
| **Creator Ecosystem** | Search for creators running multiple channels or brand identities |
| **Broad Sweep** | Rotate through all Tier 1 subreddits with general queries |

---

## Step 2 — Select Queries

Use the query templates from `ARGUS.md` or construct new ones based on focus.

### Query Bank

**Competitor Pain**
```
site:reddit.com "buffer" "multiple accounts" limit OR expensive OR frustrated
site:reddit.com "buffer alternative" social media
site:reddit.com "hootsuite" too expensive alternative
site:reddit.com "leaving buffer" OR "cancel buffer" OR "buffer sucks"
```

**Multi-Account Demand**
```
site:reddit.com "manage multiple instagram accounts" tool
site:reddit.com "manage multiple tiktok accounts"
site:reddit.com "multiple social media accounts" scheduling tool
site:reddit.com "post to multiple accounts" simultaneously
site:reddit.com "bulk scheduling" social media accounts
```

**Clipper Ecosystem**
```
site:reddit.com "clip accounts" scheduling posting tool
site:reddit.com "managing clip pages" tiktok instagram
site:reddit.com "multiple clip accounts" tool
site:reddit.com r/TikTokMonetizing "multiple accounts" tool
```

**Agency Ecosystem**
```
site:reddit.com "social media agency" "multiple clients" scheduling tool
site:reddit.com "manage clients" social media accounts one tool
site:reddit.com "social media management" agency tool subscription cost
site:reddit.com r/SocialMediaManagers "multiple clients" tool
```

**Creator Ecosystem**
```
site:reddit.com "multiple youtube channels" management tool
site:reddit.com "multiple brand accounts" social media scheduling
site:reddit.com "content calendar" "multiple platforms" tool
```

---

## Step 3 — Execute Search

Use web_search tool with queries from Step 2.

For each result:
1. Note the URL, subreddit, and thread title
2. Fetch the thread content with web_fetch
3. Read the OP and top comments
4. Evaluate: does this contain a POSTED-relevant signal?

---

## Step 4 — Evaluate Each Thread

Score each thread against the signal criteria:

**High Priority (🔴)** — user has:
- Active, specific pain that POSTED directly solves
- Clear intent to find or switch to a new tool
- Multi-account or multi-platform management need at scale
- High engagement (others agreeing = validated pain)

**Medium Priority (🟡)** — user has:
- General pain that POSTED could solve
- Early-stage research or comparison shopping
- Moderate signal but not yet clearly high-intent

**Low Priority / Monitor (🟢)** — user has:
- Tangential relevance
- May be in-market later
- Thread worth watching for follow-up activity

**No Flag** — spam, irrelevant, already solved, or no POSTED fit.

---

## Step 5 — Build the Report

Fill in `REPORT_TEMPLATE.md` for every flagged thread.

Prioritize:
- **Clarity** — Calliope must understand the opportunity immediately
- **User psychology** — personality, tone, mindset, emotional state
- **Actionability** — specific recommended approach for each user
- **Signal density** — no filler, no noise

Save report as:  
`/reports/ARGUS_REPORT_YYYY-MM-DD_NNN.md`

---

## Step 6 — Update Intelligence Assets

After each scan:
1. Update `ARGUS.md` subreddit tiers if new subreddits were discovered
2. Add new effective queries to this playbook
3. Note patterns in the report's Pattern Observations section
4. Flag any users worth monitoring in future scans

---

## Operational Constraints

- **Do not engage.** Read only. Never post, reply, or comment.
- **Do not guess.** If you can't determine intent, say so and label confidence as Low.
- **One clean report beats five sloppy ones.** Quality over volume.
- **Calliope acts. You surface.** Your job ends at the report.
