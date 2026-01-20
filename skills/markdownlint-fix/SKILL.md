---
name: markdownlint-fix
description: Auto-fix Markdown files via markdownlint-cli2. Use when you write markdown files, before handoff.
---

# Markdownlint Fix

## Quick flow

1. Identify target Markdown file path.
2. Run formatter:
   - `pnpm dlx markdownlint-cli2 --fix <file>`
3. Fix issues if reported.

## Notes

- Use for agent-authored Markdown outputs before handoff.
