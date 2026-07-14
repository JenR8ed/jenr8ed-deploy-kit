# DNS Records & Page Rules for jenr8ed.live (Account 1)

**Target State after Migration**

- Root domain (`jenr8ed.live`) → Cloudflare Pages (marketing/landing)
- `app.jenr8ed.live` → Cloudflare Pages (`ai-agentic-terminal-portfolio`)
- `link.jenr8ed.live` → Dub.co or Worker

---

## Recommended DNS Records

| Type  | Name              | Content                                      | Proxy | TTL   | Notes |
|-------|-------------------|----------------------------------------------|-------|-------|-------|
| CNAME | `www`             | `jenr8ed.live`                               | Yes   | Auto  | Redirect to root |
| CNAME | `app`             | `ai-agentic-terminal-portfolio.pages.dev`    | Yes   | Auto  | Main JAIOS app |
| CNAME | `link`            | `your-dub-project.dub.co` (or Worker)        | Yes   | Auto  | Branded short links |
| A     | `@` (root)        | Cloudflare Pages target (or use CNAME flattening) | Yes | Auto | Landing page |

> **Note**: For the root domain (`@`), Cloudflare Pages supports CNAME flattening. You can also use the A records provided by Cloudflare Pages if preferred.

---

## Recommended Page Rules / Redirect Rules

### 1. Force HTTPS (Recommended)
- **URL**: `*.jenr8ed.live/*`
- **Setting**: Always Use HTTPS → On

### 2. Canonical Domain (Choose one)

**Option A: Non-www → www**
- **URL**: `jenr8ed.live/*`
- **Forwarding URL (301)**: `https://www.jenr8ed.live/$1`

**Option B: www → Non-www** (Recommended for simplicity)
- **URL**: `www.jenr8ed.live/*`
- **Forwarding URL (301)**: `https://jenr8ed.live/$1`

### 3. Optional: Redirect old Vercel/Pages URLs
- Create redirects if needed after migration.

---

## How to Add These in Cloudflare (Account 1)

1. Go to **jenr8ed.live** → **DNS**
2. Add the CNAME records above
3. Go to **Rules** → **Page Rules** or **Redirect Rules**
4. Add the rules listed above
5. Make sure **Proxy status** is set to **Proxied** (orange cloud) for performance and SSL

---

**Last Updated**: 2026-07-14