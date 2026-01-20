#!/usr/bin/env bash
set -euo pipefail

CLAUDE_DIR="${HOME}/.claude"
CODEX_DIR="${HOME}/.codex"
PI_DIR="${HOME}/.pi"

# copy AGENTS.md
mkdir -p "${CLAUDE_DIR}" "${CODEX_DIR}" "${PI_DIR}"
cp AGENTS.MD "${CLAUDE_DIR}/CLAUDE.md"
cp AGENTS.MD "${CODEX_DIR}/AGENTS.MD"
cp AGENTS.MD "${PI_DIR}/AGENTS.MD"

# remove all skills and copy skills
rm -rf "${CLAUDE_DIR}/skills" "${CODEX_DIR}/skills" "${PI_DIR}/skills"
cp -r skills "${CLAUDE_DIR}/skills"
cp -r skills "${CODEX_DIR}/skills"
cp -r skills "${PI_DIR}/skills"
