#!/usr/bin/env bash
# LEGACY install path — copies the raw skill into a consuming repo's
# .claude/skills/entriverse folder. For Claude Code users, prefer:
#   /plugin marketplace add arun14949/entriverse
#   /plugin install entriverse@entriverse
# This script remains for older Claude Code setups, Cursor, and Copilot.
#
# Private repo — GITHUB_TOKEN must be set in your environment with at least
# read:repo scope on arun14949/entriverse.
#
# Run from the root of the consuming repo.
#
# Direct usage (with token in env):
#   curl -sL -H "Authorization: token $GITHUB_TOKEN" \
#     https://raw.githubusercontent.com/arun14949/entriverse/main/scripts/install-in-repo.sh | bash
#
# Or from a local clone:
#   /path/to/entriverse/scripts/install-in-repo.sh

set -e

if [ -z "$GITHUB_TOKEN" ]; then
  echo "Error: GITHUB_TOKEN env var not set. The EntriVerse repo is private; you"
  echo "need a GitHub PAT with 'repo' (or 'read:repo') scope on arun14949/entriverse."
  echo ""
  echo "  export GITHUB_TOKEN=ghp_yourPersonalAccessToken"
  echo ""
  exit 1
fi

# Allow override via env var. Default to the canonical repo URL with token auth.
ENTRIVERSE_REPO="${ENTRIVERSE_REPO:-https://${GITHUB_TOKEN}@github.com/arun14949/entriverse.git}"
ENTRIVERSE_BRANCH="${ENTRIVERSE_BRANCH:-main}"

if [ ! -d ".git" ]; then
  echo "Error: not inside a git repo. cd to your Entri product repo first."
  exit 1
fi

TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

echo "Fetching latest skill from arun14949/entriverse..."
git clone --depth 1 --branch "$ENTRIVERSE_BRANCH" "$ENTRIVERSE_REPO" "$TMPDIR/entriverse" 2>&1 | tail -3

mkdir -p .claude/skills

if [ -d ".claude/skills/entriverse" ]; then
  echo "Existing install found. Replacing with latest..."
  rm -rf ".claude/skills/entriverse"
fi

cp -r "$TMPDIR/entriverse/skills/entriverse" ".claude/skills/entriverse"

echo ""
echo "Installed at .claude/skills/entriverse"
echo ""
echo "Next steps:"
echo "  git add .claude/skills/entriverse"
echo "  git commit -m 'Add EntriVerse design system skill'"
echo "  git push"
echo ""
echo "Anyone cloning this repo will now get the skill automatically."
