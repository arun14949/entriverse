#!/usr/bin/env bash
# Install the EntriVerse skill for personal Claude Code use.
# Available across all your repos. Run from inside the entriverse repo clone.

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_SOURCE="$REPO_ROOT/skill"
TARGET="$HOME/.claude/skills/entriverse"

if [ ! -d "$SKILL_SOURCE" ]; then
  echo "Error: $SKILL_SOURCE not found. Run from inside the entriverse repo."
  exit 1
fi

mkdir -p "$HOME/.claude/skills"

if [ -d "$TARGET" ]; then
  echo "Existing install found at $TARGET. Replacing..."
  rm -rf "$TARGET"
fi

cp -r "$SKILL_SOURCE" "$TARGET"
echo "Installed EntriVerse skill at $TARGET"
echo ""
echo "Restart Claude Code to pick up the skill."
echo "Test by asking Claude to build any Entri UI screen."
