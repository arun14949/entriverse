#!/usr/bin/env bash
# Sync the skill folder and exports with the root entriverse.md.
# Run this any time you edit entriverse.md, before committing.

set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPEC="$REPO_ROOT/entriverse.md"
SKILL_SPEC="$REPO_ROOT/skills/entriverse/references/entriverse.md"

if [ ! -f "$SPEC" ]; then
  echo "Error: $SPEC not found"
  exit 1
fi

echo "Syncing skills/entriverse/references/entriverse.md from root..."
cp "$SPEC" "$SKILL_SPEC"

echo "Regenerating exports..."
cd "$REPO_ROOT"
npx -y @google/design.md@latest export --format tailwind entriverse.md > exports/entriverse.tailwind.json
npx -y @google/design.md@latest export --format dtcg entriverse.md > exports/entriverse.tokens.json

echo "Linting spec..."
LINT_OUTPUT=$(npx -y @google/design.md@latest lint entriverse.md 2>&1 || true)
ERRORS=$(echo "$LINT_OUTPUT" | grep -o '"errors": [0-9]*' | head -1 | awk '{print $2}')

if [ "$ERRORS" != "0" ] && [ -n "$ERRORS" ]; then
  echo "Lint failed with $ERRORS errors. Fix before committing."
  echo "$LINT_OUTPUT"
  exit 1
fi

echo "Done. Skill, exports, and lint all in sync."
echo "Files updated:"
echo "  skills/entriverse/references/entriverse.md"
echo "  exports/entriverse.tokens.json"
echo "  exports/entriverse.tailwind.json"
echo ""
echo "Review with 'git diff' then commit."
