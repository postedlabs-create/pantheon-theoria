# INFRASTRUCTURE — SHARED TECHNICAL REFERENCE

*All shared systems, accounts, paths, and deployment targets.*

---

## OpenClaw

- **Version:** OpenClaw 2026.3.28
- **Host (local):** Kaizen's MacBook Pro (primary)
- **Workspace root (local):** `/Users/mca/Desktop/Pantheon/open-claw/workspace`
- **OpenClaw state dir (local):** `/Users/mca/Desktop/Pantheon/open-claw/`
- **Workspace root (Railway):** `/data/workspace/`
- **Railway volume mount:** `/data/`

---

## Google Drive

- **Shared account:** postedlabs.io@gmail.com
- **Root folder:** `Pantheon/`
- **Argus reports path:** `Pantheon/Theoria/Argus/reports/`
- **Calliope reports path:** `Pantheon/Theoria/Calliope/reports/`

---

## GitHub

- **Repository:** github.com/postedlabs-create/pantheon-theoria *(private)*
- **Local clone:** `/Users/mca/Desktop/Pantheon/github-repositories/pantheon-theoria/`
- **Primary branch:** main
- **What lives here:** Agent scaffold files, playbooks, docs, report templates — public-safe content only

---

## Railway

- **Purpose:** 24/7 hosting for Pantheon Agentic deployment
- **Status:** Planned
- **Strategy:** Hybrid — Railway hosts runtime-sensitive files (SOUL.md, IDENTITY.md, OPERATORS/ vault, live memory). GitHub hosts version-controlled scaffold.

---

## The Citadel

- **Location:** `/Volumes/Citadel/the-citadel/`
- **Purpose:** Locally hosted command hub
- **Access:** Physical — Kaizen's machine only

---

## API Accounts & Ownership

| Service | Account | Owner |
|---------|---------|-------|
| Google / Drive | postedlabs.io@gmail.com | Kaizen |
| Firebase | postedlabs-d47ae | Kaizen |
| GitHub | postedlabs-create | Kaizen |
| App Store / Rork.ai | postedlabs.io@gmail.com | Kaizen |
| Kaiaku login | postedlabs@gmail.com | Kaiaku |

---

## Deployment Strategy — Hybrid GitHub + Railway

| File Type | Storage |
|-----------|---------|
| Agent scaffold (SOUL, IDENTITY, OPERATORS) | Railway Persistent Volume |
| Division structure, playbooks, templates | GitHub |
| Live memory content | Railway Persistent Volume |
| Memory folder structure | GitHub (via .gitkeep) |
| Live reports | Google Drive |
| Report templates | GitHub |

---

*Last updated: 2026-03-30 | Source of truth: vault/06_system/WORLD/*
