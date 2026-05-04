#!/usr/bin/env bash
# LEGACY install path — for users who don't have Claude Code's plugin system.
# If you do, prefer:
#   /plugin marketplace add arun14949/entriverse
#   /plugin install entriverse@entriverse
#
# This script copies the raw skill folder into ~/.claude/skills/entriverse,
# which still works for Cursor, Copilot, or older Claude Code setups.
# Run from inside the entriverse repo clone.

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_SOURCE="$REPO_ROOT/skills/entriverse"
TARGET="$HOME/.claude/skills/entriverse"

if [ ! -d "$SKILL_SOURCE" ]; then
  echo "Error: $SKILL_SOURCE not found. Run from inside the entriverse repo."
  exit 1
fi

echo "Note: this is the legacy install path. If you use Claude Code, prefer:"
echo "  /plugin marketplace add arun14949/entriverse"
echo "  /plugin install entriverse@entriverse"
echo ""

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
