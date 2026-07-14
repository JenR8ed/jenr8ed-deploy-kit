# Universal JAIOS Update Protocol

**Status**: Canonical | Last Updated: 2026-07-14

## Overview

This is the single source of truth for keeping all JAIOS (Agentic AI Terminal / AI OS) projects, deployments, documentation, and Notion state in perfect sync.

**Goal**: Zero drift. One process. Full visibility in the JAIOS Command Center.

## Core Principles

- File-System-as-Database (FSAD)
- Single-source staging
- Right platform for the job (Cloudflare Pages for static UI, Vercel for dynamic apps)
- Notion as the live Command Center
- Automated where possible

## Hosting Architecture

| Target                    | Platform             | Purpose                              | Current State                  |
|---------------------------|----------------------|--------------------------------------|--------------------------------|
| jenr8ed.live (root/www)   | Cloudflare Pages    | Marketing / Landing UI              | jenr8ed-live-ui.pages.dev     |
| app.jenr8ed.live          | Vercel              | Main JAIOS Application              | Dynamic terminal + agents     |
| link.jenr8ed.live         | Dub.co              | Branded short links & affiliates    | Migration from TinyURL in progress |
| Individual JAIOS projects | Vercel              | ai-agentic-terminal-portfolio, jaios-* repos | Multiple vercel.app deployments |

## Universal Workflow

1. Developer pushes code to GitHub
2. GitHub Actions runs quality gates
3. Automatic deployment to correct platform
4. Status automatically synced to Notion JAIOS Command Center
5. Documentation (this protocol + Engineering Wiki) stays updated

## Required Secrets (per repo)

- `VERCEL_TOKEN`
- `VERCEL_ORG_ID` / `VERCEL_PROJECT_ID` (optional but recommended)
- `NOTION_API_KEY` (future)
- `NOTION_JAIOS_COMMAND_CENTER_ID` (future)

## How to Adopt

1. Copy `templates/github-actions/deploy.yml` into your repo
2. Add required secrets in GitHub repo settings
3. Update your entry in the JAIOS Command Center Notion database
4. Reference this protocol in your README

## Notion Database Schema Recommendation

**Database Name**: JAIOS Command Center

**Key Properties**:
- Project Name (Title)
- Repo URL
- Deployment URL
- Platform (Select: Vercel, Cloudflare Pages, Dub.co, Other)
- Status (Select: Live, In Progress, Needs Attention, Deprecated)
- Last Updated (Date)
- Subdomain / DNS
- Notes / Blockers (Text)

## Related Documents

- [Universal Handoff](handoff-universal.md)
- Engineering Wiki (Notion)
- jenr8ed-deploy-kit README

---

**This page should be kept in sync with `docs/handoff-universal.md`.**

*Copy the content above into a new Notion page for best formatting.*