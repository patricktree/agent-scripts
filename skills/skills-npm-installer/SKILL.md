---
name: skills-npm-installer
description: Install or list agent skills using the npm package "skills" (npx skills add). Use when user asks to add/install skills from a repo/path, list available skills, or manage skills with the skills CLI.
---

# Skills npm installer

Always use `npx skills add`.

## Global-only, no-agent rule

- Always pass `--global`.
- Never pass `--agent` or `--all`.
- If prompted for agents, deselect all and continue.

## Common flows

### List skills in a repo

```bash
npx skills add --list <source>
```

### Install a specific skill by name

```bash
npx skills add --global --yes --skill <skill-name> <source>
```

### Install multiple named skills

```bash
npx skills add --global --yes --skill <skill-a> --skill <skill-b> <source>
```

## Notes

- Source can be a Git repo URL, GitHub shorthand (owner/repo), local path, or direct skill path.
- If the user wants a dry run, use `--list` only.
- If the user asks for prompts, omit `--yes`.
