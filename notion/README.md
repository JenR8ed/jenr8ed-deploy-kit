# Notion Command Center Integration

This folder contains tools to sync deployment and project status from GitHub Actions to your Notion JAIOS Command Center.

## Setup Instructions

### 1. Create a Notion Integration

1. Go to https://www.notion.so/my-integrations
2. Create a new integration
3. Give it a name (e.g. "JAIOS Deploy Bot")
4. Copy the **Internal Integration Token** (this will be your `NOTION_API_KEY`)

### 2. Share Your Database with the Integration

1. Open your **JAIOS Command Center** database in Notion
2. Click **Share** → Invite your integration by name
3. Make sure it has **Can edit** permissions

### 3. Get Your Database ID

1. Open the database in Notion
2. Copy the URL
3. The database ID is the long string after the last `/` and before `?`
   Example: `https://www.notion.so/.../abc123def4567890` → `abc123def4567890`

### 4. Add Secrets to GitHub

In each repo that should sync to Notion, add these **Repository Secrets**:

- `NOTION_API_KEY` — Your integration token
- `NOTION_DATABASE_ID` — The ID of your JAIOS Command Center database

### 5. Install Dependency (in your project)

```bash
npm install @notionhq/client
```

Or run it from the deploy-kit if using as a submodule.

## Usage

### From GitHub Actions

Add this step to your deploy workflow:

```yaml
- name: Sync to Notion JAIOS Command Center
  run: |
    node notion/sync-deployment.js \
      "${{ github.repository }}" \
      "https://your-deployment-url.com" \
      "Live" \
      "Vercel"
  env:
    NOTION_API_KEY: ${{ secrets.NOTION_API_KEY }}
    NOTION_DATABASE_ID: ${{ secrets.NOTION_DATABASE_ID }}
```

### From Command Line

```bash
node notion/sync-deployment.js "My Project" "https://example.com" "Live" "Vercel"
```

## Database Properties Expected

The script expects these properties in your Notion database:

- `Name` (Title)
- `Status` (Select)
- `URL` (URL)
- `Platform` (Select)
- `Last Updated` (Date)

You can extend `sync-deployment.js` to support more properties as needed.

## Recommended Database

Create a database called **JAIOS Command Center** with the properties listed above for best results.