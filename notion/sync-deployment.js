const { Client } = require('@notionhq/client');

/**
 * Syncs deployment status to the JAIOS Command Center Notion database.
 * 
 * Required environment variables:
 * - NOTION_API_KEY: Your Notion integration token
 * - NOTION_DATABASE_ID: The ID of your JAIOS Command Center database
 */

async function syncDeployment({ project, url, status = 'Live', platform = 'Vercel' }) {
  const notion = new Client({ auth: process.env.NOTION_API_KEY });
  const databaseId = process.env.NOTION_DATABASE_ID;

  if (!databaseId) {
    console.error('Missing NOTION_DATABASE_ID');
    process.exit(1);
  }

  try {
    await notion.pages.create({
      parent: { database_id: databaseId },
      properties: {
        Name: {
          title: [{ text: { content: project } }]
        },
        Status: {
          select: { name: status }
        },
        URL: {
          url: url || null
        },
        Platform: {
          select: { name: platform }
        },
        'Last Updated': {
          date: { start: new Date().toISOString() }
        }
      }
    });

    console.log(`✅ Successfully synced ${project} to Notion JAIOS Command Center`);
  } catch (error) {
    console.error('Failed to sync to Notion:', error.message);
    process.exit(1);
  }
}

// Allow running from command line
if (require.main === module) {
  const args = process.argv.slice(2);
  const project = args[0] || process.env.PROJECT_NAME || 'Unknown Project';
  const url = args[1] || process.env.DEPLOYMENT_URL;
  const status = args[2] || process.env.DEPLOYMENT_STATUS || 'Live';
  const platform = args[3] || process.env.PLATFORM || 'Vercel';

  syncDeployment({ project, url, status, platform });
}

module.exports = { syncDeployment };