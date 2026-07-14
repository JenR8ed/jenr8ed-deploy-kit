# Current State & Known Discrepancies (as of 2026-07-14)

**Source**: MCP Tools Audit (GitHub + Vercel metadata + Notion search + Cloudflare zone export)

## Summary

The JAIOS ecosystem is in an active standardization phase. A new `jenr8ed-deploy-kit` was created today to serve as the single source of truth and automation layer.

## Hosting Reality

- **jenr8ed.live root + www**: Cloudflare Pages (`jenr8ed-live-ui.pages.dev`)
- **Most JAIOS application repos** (`AI-Agentic-Terminal-Portfolio`, `jaios-agentic-core`, `jaios-portfolio`, `jaios-notion-gateway`): Deployed to Vercel
- **link.jenr8ed.live**: Currently proxied in Cloudflare (needs migration to Dub.co)

**Recommended Future State**:
- Static marketing/landing → Cloudflare Pages
- Dynamic app (`app.jenr8ed.live`) → Vercel
- Short links → Dub.co

## New Repos Created Today

- `jenr8ed-deploy-kit` (this repo) – Standardization toolkit
- `jaios-agentic-core`
- `jaios-portfolio`
- `jaios-notion-gateway`

All new repos currently point to Vercel homepages.

## Documentation Sync

- Notion has an active **“🚀 JAIOS Command Center”** page
- Engineering Wiki exists for state logging
- This deploy-kit now contains the canonical `handoff-universal.md` and supporting documents

## Action Items to Resolve Drift

1. Wire `app.jenr8ed.live` custom domain to the main Vercel JAIOS project
2. Complete migration of `link.jenr8ed.live` to Dub.co
3. Add references to `jenr8ed-deploy-kit` in all JAIOS repos
4. Populate Notion JAIOS Command Center with current deployment URLs
5. Update repo homepages / READMEs with links to this kit

## How to Keep This Document Updated

Run the universal workflow (GitHub Actions + Notion sync) or manually update this file when major changes occur.

**Next Review Date**: After first full adoption of the deploy workflow across core repos.