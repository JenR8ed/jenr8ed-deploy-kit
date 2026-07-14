#!/bin/bash

# Cloudflare Account Migration Helper
# For consolidating from Account 2 into Account 1

set -e

echo "=== JAIOS Cloudflare Migration Helper ==="
echo ""
echo "This script provides guided steps for migrating from Account 2 to Account 1."
echo "It does NOT run destructive commands automatically."
echo ""

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_step() {
    echo -e "${GREEN}==>${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}WARNING:${NC} $1"
}

# Phase 1: Preparation
echo ""
print_step "Phase 1: Preparation"
echo "1. Log into both Cloudflare accounts"
echo "2. Take screenshots of all resources in Account 2"
echo "3. Export Workers code from Account 2"
echo "4. Create new API token in Account 1"
echo "5. Add token to GitHub Secrets"
echo ""
read -p "Press enter to continue to Phase 2..."

# Phase 2: Migrate Main App
echo ""
print_step "Phase 2: Migrate AI-Agentic-Terminal-Portfolio"
echo "Recommended: Re-deploy to Account 1 using Cloudflare Pages"
echo ""
echo "Steps:"
echo "  a. Go to Account 1 > Pages > Create new project"
echo "  b. Connect repo: JenR8ed/AI-Agentic-Terminal-Portfolio"
echo "  c. Build command: npm run build"
echo "  d. Output directory: dist"
echo "  e. Deploy and test"
echo ""
print_warning "Do NOT delete the old deployment until the new one is verified."
echo ""
read -p "Press enter to continue to Phase 3..."

# Phase 3: Workers
echo ""
print_step "Phase 3: Migrate Workers"
echo "Recommended new names in Account 1:"
echo "  - agentic-inbox-deployed  ->  jaios-inbox"
echo "  - link-redirector         ->  jaios-link-redirector"
echo ""
echo "After creating new Workers:"
echo "  1. Upload exported code"
echo "  2. Add environment variables"
echo "  3. Deploy and test"
echo "  4. Update any routes"
echo ""
read -p "Press enter to continue to Phase 4..."

# Phase 4: DNS
echo ""
print_step "Phase 4: Update DNS in Account 1"
echo "Add these records to jenr8ed.live zone:"
echo ""
echo "  app.jenr8ed.live        CNAME   <new-pages-project>.pages.dev"
echo "  link.jenr8ed.live       CNAME   <new-worker>.workers.dev  (or Dub.co)"
echo ""
echo "Also add Page Rules for HTTPS and www redirect."
echo ""
read -p "Press enter to continue to Phase 5..."

# Phase 5: Automation
echo ""
print_step "Phase 5: Update GitHub Actions"
echo "Update workflows in all JAIOS repos to use the new Cloudflare token from Account 1."
echo "Remove any secrets that point to Account 2."
echo ""
read -p "Press enter to finish..."

# Final
echo ""
echo "=== Migration Helper Complete ==="
echo "Next: Follow the full checklist in docs/migration/cloudflare-consolidation-checklist.md"
echo "Remember to verify everything before deleting Account 2."