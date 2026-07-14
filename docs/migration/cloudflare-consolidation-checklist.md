# Cloudflare Account Consolidation Checklist

**Goal**: Migrate all important resources from Account 2 into Account 1 and safely decommission Account 2.

**Status as of 2026-07-14**: Planning complete. Workflow and DNS guides ready. Ready to start Phase 2.

**Primary Account**: `Jen.mckinley@gmail.com` (via GitHub JenR8ed)
**Secondary Account**: `Jen-is-a-genius@outlook.com`

---

## Phase 1: Preparation [IN PROGRESS]

- [x] Log into both Cloudflare accounts
- [x] Take screenshots of resources in Account 2
- [ ] Export Workers code from Account 2
- [ ] Create new API Token in Account 1
- [ ] Add new token to GitHub Secrets
- [ ] Document current custom domains

---

## Phase 2: Migrate Main App (AI-Agentic-Terminal-Portfolio) [READY TO START]

- [ ] Create new Cloudflare Pages project in Account 1
- [ ] Connect GitHub repo `JenR8ed/AI-Agentic-Terminal-Portfolio`
- [ ] Configure Vite build settings
- [ ] Deploy and test
- [ ] Add custom domain `ai-agentic-terminal-portfolio.pages.dev`
- [ ] Update GitHub Actions with new workflow
- [ ] Test deployment from GitHub

---

## Phase 3: Migrate Other Pages

- [ ] Migrate `jenr8ed-littlelink` (if keeping)

---

## Phase 4: Migrate Workers

- [ ] Create `jaios-inbox` and `jaios-link-redirector` in Account 1
- [ ] Upload code and deploy

---

## Phase 5: Update DNS (Account 1)

- [ ] Add `app` CNAME record
- [ ] Add `link` CNAME record
- [ ] Configure Page Rules / Redirect Rules

---

## Phase 6: Update Automation

- [ ] Update all GitHub Actions to use Account 1 token

---

## Phase 7: Verification

- [ ] Test `app.jenr8ed.live`
- [ ] Verify all Workers
- [ ] Confirm GitHub Actions work

---

## Phase 8: Decommission Account 2

- [ ] Delete resources in Account 2
- [ ] Delete Account 2

---

**Next Immediate Action**: Start Phase 2 (Create new Pages project in Account 1)

**Last Updated**: 2026-07-14