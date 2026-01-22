#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # dirname may be relative; cd+pwd makes absolute, stable symlink target even from other CWDs/symlinks
CENTRAL_SKILLS_DIR="${SCRIPT_DIR}/skills"

CLAUDE_DIR="${HOME}/.claude"
CODEX_DIR="${HOME}/.codex"
GITHUB_DIR="${HOME}/.github"
PI_DIR="${HOME}/.pi"

# copy AGENTS.md
mkdir -p "${CLAUDE_DIR}" "${CODEX_DIR}" "${GITHUB_DIR}" "${PI_DIR}"
cp AGENTS.MD "${CLAUDE_DIR}/CLAUDE.md"
cp AGENTS.MD "${CODEX_DIR}/AGENTS.MD"
cp AGENTS.MD "${GITHUB_DIR}/AGENTS.MD"
cp AGENTS.MD "${PI_DIR}/AGENTS.MD"

# remove all skills and symlink to central skills dir
rm -rf "${CLAUDE_DIR}/skills" "${CODEX_DIR}/skills" "${GITHUB_DIR}/skills" "${PI_DIR}/skills"
ln -s "${CENTRAL_SKILLS_DIR}" "${CLAUDE_DIR}/skills"
ln -s "${CENTRAL_SKILLS_DIR}" "${CODEX_DIR}/skills"
ln -s "${CENTRAL_SKILLS_DIR}" "${GITHUB_DIR}/skills"
ln -s "${CENTRAL_SKILLS_DIR}" "${PI_DIR}/skills"
