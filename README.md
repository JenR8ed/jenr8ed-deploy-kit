# jenr8ed-deploy-kit — JAIOS Deployment & Governance Layer

Reusable automation and documentation layer for the **JenR8ed AI Operating System (JAIOS)** ecosystem.

> **Current state:** Active standardization / migration layer. The goal is consistent project creation, deployment, secrets handling, handoffs, and operational documentation across JenR8ed repositories.

## Purpose

Centralizes:
- reusable repository templates
- deployment scripts
- handoff procedures
- Notion Command Center integration patterns
- migration documentation
- JAIOS project conventions

## Principles

- single source of truth
- zero-bloat automation
- zero-trust secret handling
- reproducible deployments
- human-auditable handoffs
- reusable project scaffolding

## Current ecosystem

```
                         JAIOS
                           |
                +----------+----------+
                |                     |
          Project repos        Command Center
                |                     |
                +----------+----------+
                           |
                  jenr8ed-deploy-kit
```

Projects being standardized include AI-List-Assist, AI-Agentic-Terminal-Portfolio, JAIOS Core, and JAIOS Notion Gateway.

## Migration work

Documentation currently covers Cloudflare/DNS migration, portfolio deployment migration, JAIOS current-state discrepancies, deployment checklists, universal handoffs, and repository templates.

This is a **governance and automation layer**, not another application runtime.

## Security model

Managed secret source → deployment environment → application.

Secrets should not be committed to repositories; the ecosystem favors Doppler/managed injection and explicit environment boundaries.

## Related projects

- [AI-List-Assist](https://github.com/JenR8ed/AI-List-Assist)
- [jaios-agentic-core](https://github.com/JenR8ed/jaios-agentic-core)
- [jaios-notion-gateway](https://github.com/JenR8ed/jaios-notion-gateway)
- [AI-Agentic-Terminal-Portfolio](https://github.com/JenR8ed/AI-Agentic-Terminal-Portfolio)