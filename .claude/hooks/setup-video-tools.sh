#!/usr/bin/env bash
# SessionStart hook: make the video tools in this repo usable.
#
# - claude-shorts (/shorts) and ghost-editor hardcode ~/.claude/skills/<name>,
#   so the copies in video-tools/ are symlinked there.
# - yt-dlp is installed if missing.
#
# Runs only in Claude Code cloud sessions. On your own machine, run once:
#   ln -s "$PWD/video-tools/shorts" ~/.claude/skills/shorts
#   ln -s "$PWD/video-tools/ghost-editor" ~/.claude/skills/ghost-editor
#   pip install yt-dlp
set -u

[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

ROOT="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}"
mkdir -p "$HOME/.claude/skills"

for name in shorts ghost-editor; do
  link="$HOME/.claude/skills/$name"
  if [ ! -e "$link" ] || [ -L "$link" ]; then
    ln -sfn "$ROOT/video-tools/$name" "$link"
  fi
done

if ! command -v yt-dlp >/dev/null 2>&1; then
  pip install --quiet yt-dlp >/dev/null 2>&1 || pip install --quiet --user yt-dlp >/dev/null 2>&1 || true
fi

exit 0
