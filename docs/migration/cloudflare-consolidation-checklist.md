# Cloudflare Account Consolidation Checklist

**Goal**: Migrate all important resources from Account 2 (`Jen-is-a-genius@outlook.com`) into Account 1 (`Jen.mckinley@gmail.com`) and safely decommission Account 2.

**Primary Account**: `Jen.mckinley@gmail.com` (via GitHub JenR8ed)
**Secondary Account**: `Jen-is-a-genius@outlook.com` (Account ID: `c7111de3f7a275850964d977af2668c7`)

---

## Phase 1: Preparation

- [ ] Log into both Cloudflare accounts
- [ ] Take screenshots of all resources in Account 2
- [ ] Export code for Workers in Account 2:
  - [ ] `agentic-inbox-deployed`
  - [ ] `link-redirector`
- [ ] Create new API Token in Account 1 with scopes:
  - [ ] Zone:Edit
  - [ ] Page:Edit
  - [ ] Worker Scripts:Edit
  - [ ] Account Settings:Read
- [ ] Add new Cloudflare API token to GitHub repository secrets
- [ ] Document all current custom domains and routes in Account 2

---

## Phase 2: Migrate Main Application (AI-Agentic-Terminal-Portfolio)

- [ ] In Account 1, create new Cloudflare Pages project
- [ ] Connect GitHub repo: `JenR8ed/AI-Agentic-Terminal-Portfolio`
- [ ] Configure build settings:
  - Build command: `npm run build`
  - Output directory: `dist`
  - Framework: Vite
- [ ] Deploy and verify it works
- [ ] Add custom domain `ai-agentic-terminal-portfolio.pages.dev`
- [ ] Update GitHub Actions workflow to use Cloudflare Pages deployment
- [ ] Test deployment from GitHub Actions
- [ ] Verify the app works at the new URL

---

## Phase 3: Migrate Other Pages Project

- [ ] Migrate `jenr8ed-littlelink` (if keeping)
- [ ] Follow same process as Phase 2

---

## Phase 4: Migrate Workers

- [ ] Create new Workers in Account 1 with clearer names:
  - [ ] `jaios-inbox`
  - [ ] `jaios-link-redirector`
- [ ] Upload exported code
- [ ] Recreate environment variables and secrets
- [ ] Deploy and test functionality
- [ ] Update any routes/custom domains pointing to old Workers

---

## Phase 5: Update DNS in Account 1

- [ ] Add/Update DNS records in `jenr8ed.live` zone:
  - [ ] `app` → new Pages project
  - [ ] `link` → new Worker or Dub.co
  - [ ] `littlelink` (optional)
- [ ] Add Page Rules / Redirect Rules:
  - [ ] Force HTTPS
  - [ ] www ↔ non-www redirect
- [ ] Verify DNS propagation (dnschecker.org)

---

## Phase 6: Update Automation

- [ ] Update all GitHub Actions workflows to use new Cloudflare token
- [ ] Remove old Account 2 secrets
- [ ] Test deployments end-to-end

---

## Phase 7: Verification

- [ ] `https://app.jenr8ed.live` loads correctly
- [ ] All Workers are functioning
- [ ] GitHub Actions deploy successfully
- [ ] No broken functionality after 48 hours

---

## Phase 8: Decommission Account 2

- [ ] Delete all Pages projects in Account 2
- [ ] Delete all Workers in Account 2
- [ ] Revoke all API tokens from Account 2
- [ ] Remove payment methods
- [ ] Delete Account 2

---

## Post-Migration

- [ ] Update `handoff-universal.md` with new state
- [ ] Update project READMEs with new deployment URLs
- [ ] Archive this checklist

**Last Updated**: 2026-07-14