# AGENTS.MD

Patrick owns this. Start: say hi + 1 motivating line.
Work style: telegraph; noun-phrases ok; drop grammar; min tokens.

## Agent Protocol

- Contact: Patrick Kerschbaum (@patricktree, <patrick.kerschbaum@gmail.com>).
- Workspace: `~/workspace`. Missing patricktree repo: clone `https://github.com/patricktree/<repo>.git`.
- Files: repo or `~/workspace/agent-scripts`.
- PRs: use `gh pr view/diff` (no URLs).
- “Make a note” => edit AGENTS.md (shortcut; not a blocker). Ignore `CLAUDE.md`.
- Guardrails: use `trash` for deletes.
- Need upstream file: stage in `/tmp/`, then cherry-pick; never overwrite tracked.
- Bugs: add regression test when it fits.
- Keep files <~500 LOC; split/refactor as needed.
- Commits: Conventional Commits (`feat|fix|refactor|build|ci|chore|docs|style|perf|test`).
- Editor: `code <path>`.
- CI: `gh run list/view` (rerun/fix til green).
- Prefer end-to-end verify; if blocked, say what’s missing.
- New deps: quick health check (recent releases/commits, adoption).
- Web: search early; quote exact errors; prefer 2024–2025 sources.
- Oracle: run `npx -y @steipete/oracle --help` once/session before first use.
- Style: telegraph. Drop filler/grammar. Min tokens (global AGENTS + replies).

## Screenshots (“use a screenshot”)

- Size: `sips -g pixelWidth -g pixelHeight <file>` (prefer 2×).
- Optimize: `imageoptim <file>` (install: `brew install imageoptim-cli`).
- Replace asset; keep dimensions; commit; run gate; verify CI.

## Important Locations

- Blog repo: `~/workspace/patricktree-homepage/`

## PR Feedback

- Active PR: `gh pr view --json number,title,url --jq '"PR #\\(.number): \\(.title)\\n\\(.url)"'`.
- PR comments: `gh pr view …` + `gh api …/comments --paginate`.
- Replies: cite fix + file/line; resolve threads only after fix lands.
- When merging a PR: thank the contributor in `CHANGELOG.md`.

## Flow & Runtime

- Use repo’s package manager/runtime; no swaps w/o approval.
- Use Codex background for long jobs; tmux only for interactive/persistent (debugger/server).

## Tmux Window Naming

- You MUST name tmux windows for things you work on. Name the window after the first user prompt. If you are working on items of a plan, rename the window whenever you start working on an item. The command to rename the window is `printenv | grep '^TMUX=' && tmux rename-window "codex: <task>"`. If this command fails, ignore it (then you are not running in a tmux session). Keep `<task>` to 2–8 words.

## Startup Checklist

- Run `source ~/.nvm/nvm.sh && nvm install` when file `.nvmrc` exists, to automatically install and use the correct Node.js version.
- Run `corepack enable` when `package.json#packageManager` is set, to enable the specified package manager (e.g. `pnpm`).

## Build / Test

- Before handoff: run full gate (lint/typecheck/tests/docs).
- CI red: `gh run list/view`, rerun, fix, push, repeat til green.
- Keep it observable (logs, panes, tails, MCP/browser tools).

## Git

- Safe by default: `git status/diff/log`. Push only when user asks.
- `git checkout` ok for PR review / explicit request.
- Branch changes require user consent.
- Destructive ops forbidden unless explicit (`reset --hard`, `clean`, `restore`, `rm`, …).
- Remotes under `~/workspace`.
- Don’t delete/rename unexpected stuff; stop + ask.
- No repo-wide S/R scripts; keep edits small/reviewable.
- Avoid manual `git stash`; if Git auto-stashes during pull/rebase, that’s fine (hint, not hard guardrail).
- Review the last 30 commit messages before constructing a commit message.
- If user types a command (“pull and push”), that’s consent for that command.
- No amend unless asked.
- Big review: `git --no-pager diff --color=never`.
- Multi-agent: check `git status/diff` before edits; ship small commits.

## Language/Stack Notes

- TypeScript: use repo PM; keep files small; follow existing patterns.

## Critical Thinking

- Fix root cause (not band-aid).
- Unsure: read more code; if still stuck, ask w/ short options.
- Conflicts: call out; pick safer path.
- Unrecognized changes: assume other agent; keep going; focus your changes. If it causes issues, stop + ask user.
- Leave breadcrumb notes in thread.

## Tools

### pnpm

- does not require `--` before CLI options or forwarded arguments; pass them directly.

### bird

- X CLI: `~/Projects/bird/bird`. Cmds: `tweet`, `reply`, `read`, `thread`, `search`, `mentions`, `whoami`.
- Uses Firefox cookies by default (`--firefox-profile` to switch).

### trash

- Move files to Trash: `trash …` (system command).

### oracle

- Bundle prompt+files for 2nd model. Use when stuck/buggy/review.
- Run `npx -y @steipete/oracle --help` once/session (before first use).

### gh

- GitHub CLI for PRs/CI/releases. Given issue/PR URL (or `/pull/5`): use `gh`, not web search.
- Examples: `gh issue view <url> --comments -R owner/repo`, `gh pr view <url> --comments --files -R owner/repo`.

### tmux

- Use only when you need persistence/interaction (debugger/server).
- Quick refs: `tmux new -d -s codex-shell`, `tmux attach -t codex-shell`, `tmux list-sessions`, `tmux kill-session -t codex-shell`.

<frontend_aesthetics>
Avoid “AI slop” UI. Be opinionated + distinctive.

Do:

- Typography: pick a real font; avoid Inter/Roboto/Arial/system defaults.
- Theme: commit to a palette; use CSS vars; bold accents > timid gradients.
- Motion: 1–2 high-impact moments (staggered reveal beats random micro-anim).
- Background: add depth (gradients/patterns), not flat default.

Avoid: purple-on-white clichés, generic component grids, predictable layouts.
</frontend_aesthetics>
