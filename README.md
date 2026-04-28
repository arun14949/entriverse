# EntriVerse

The design system for Entri. Source of truth for tokens, components, typography, color, spacing, elevation, and dark mode rules across web, Android, and iOS. Supports 11+ regional Indian languages.

This repo is the canonical home for the EntriVerse spec and a Claude Code / Claude.ai skill that lets AI tools generate UI that matches the system.

## What's in here

```
entriverse.md               The full specification. Single source of truth.
exports/                    Auto-generated token outputs.
  entriverse.tokens.json      DTCG format. For Style Dictionary, Tokens Studio.
  entriverse.tailwind.json    Tailwind config fragment.
skill/                      Pre-packaged AI skill. Install per instructions below.
  SKILL.md                    Trigger file with cardinal rules.
  references/entriverse.md    Full spec, loaded on demand by the AI.
scripts/                    Install and sync helpers.
CHANGELOG.md                Version history.
```

## For designers and PMs reading this

If you want to understand how the system fits together, open `entriverse.md` and read the prose sections (Overview, Colors, Typography, Layout, Elevation, Shapes, Components, Dark Mode, Do's and Don'ts). The YAML at the top is the machine-readable token list.

## For engineers building Entri products

Two ways to consume the system. Pick one.

**Option A. Tailwind users.** Drop `exports/entriverse.tailwind.json` into your `tailwind.config.js` under `theme.extend`. You now have all tokens as Tailwind classes (`bg-primary`, `text-text-subtext`, `rounded-full`, etc.).

**Option B. Anyone else.** Use `exports/entriverse.tokens.json` (DTCG format) with Style Dictionary, Tokens Studio, or any modern token tool. Build outputs for CSS variables, iOS asset catalog, Android XML, etc.

For both, also install the AI skill (next section) so Claude Code, Cursor, or Copilot generate code that respects the system.

## For anyone using AI tools to build Entri UI

Install the skill once. The AI then knows the system without you pasting it into every prompt.

**Personal install (works across all your repos):**

```bash
git clone https://github.com/arun14949/entriverse.git ~/entriverse
mkdir -p ~/.claude/skills
cp -r ~/entriverse/skill ~/.claude/skills/entriverse
```

**Per-repo install (recommended for team Entri repos):**

From inside the Entri product repo:

```bash
curl -sL https://raw.githubusercontent.com/arun14949/entriverse/main/scripts/install-in-repo.sh | bash
git add .claude/skills/entriverse
git commit -m "Add EntriVerse skill"
```

After install, anyone on the team using Claude Code in that repo gets the skill automatically. No per-person setup.

## Updating

The skill folder duplicates the root spec file (Claude Code reads from inside the skill folder, so it must be self-contained). Whenever you edit `entriverse.md` at the root:

```bash
./scripts/sync.sh
```

This copies the spec into the skill, regenerates the JSON exports, and runs the linter. Commit the result.

If you forget, the included pre-commit-style check in `sync.sh` will warn you.

## Contributing

The spec evolves with the design system. Anyone on the design team can open a PR.

1. Edit `entriverse.md` at the root. Always edit there, never inside `skill/references/`.
2. Run `./scripts/sync.sh` to propagate changes.
3. Commit and push. Open a PR.
4. At minimum, the design system owner reviews. Engineering can review tokens that affect their consumption.
5. Update `CHANGELOG.md` with a one-line summary of the change.

For larger changes (new component, breaking token rename), bump the version in `CHANGELOG.md` and announce in the design team Slack so engineering can pull updates intentionally.

## Roadmap

Things on the list, not yet built:

- Audit script that scans generated React/SwiftUI code for hardcoded hex/px and flags it.
- Sync routine against the EntriVerse Figma file for catching drift in the other direction.
- Animation and motion tokens.
- Iconography spec.

## License

Proprietary. Internal Entri use only.
