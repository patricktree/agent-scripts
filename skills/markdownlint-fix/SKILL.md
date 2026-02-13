---
name: markdownlint-fix
description: Auto-fix Markdown files via markdownlint-cli2. Use when you write markdown files, before handoff.
---

# Markdownlint Fix

## Quick flow

1. Identify target Markdown file path(s) changed this turn.
2. Run formatter:
   - `pnpm dlx markdownlint-cli2 --fix <file>`
3. Fix issues if reported; ignore `MD013/line-length` errors.

## Notes

- Always run after writing or editing any `.md` file (including specs, docs, README, AGENTS).
- If multiple files, run once per file or pass all paths in one command.
