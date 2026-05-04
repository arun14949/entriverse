# EntriVerse

The internal design system for Entri. Source of truth for tokens, components, typography, color, spacing, elevation, and dark mode rules across web, Android, and iOS. Supports 11+ regional Indian languages.

This repo is the canonical home for the EntriVerse spec and ships as a **Claude Code marketplace plugin** so AI tools generate UI that matches the system without you pasting the spec into every prompt.

> **Private repo.** Internal Entri use only. See [LICENSE](LICENSE).

## What's in here

```
entriverse.md                    The full specification. Single source of truth.
.claude-plugin/
  plugin.json                    Claude Code plugin manifest.
  marketplace.json               Single-plugin marketplace manifest.
skills/
  entriverse/
    SKILL.md                       Trigger file with cardinal rules.
    references/entriverse.md       Full spec, loaded on demand by the AI.
exports/                         Auto-generated token outputs.
  entriverse.tokens.json           DTCG format. For Style Dictionary, Tokens Studio.
  entriverse.tailwind.json         Tailwind config fragment.
scripts/                         Sync, lint, and legacy install helpers.
CHANGELOG.md                     Version history.
```

## For designers and PMs reading this

Open `entriverse.md` and read the prose sections (Overview, Colors, Typography, Layout, Elevation, Shapes, Components, Dark Mode, Do's and Don'ts). The YAML at the top is the machine-readable token list.

## For engineers building Entri products

Two ways to consume the system. Pick one.

**Option A. Tailwind users.** Drop `exports/entriverse.tailwind.json` into your `tailwind.config.js` under `theme.extend`. You now have all tokens as Tailwind classes (`bg-primary`, `text-subtext`, `rounded-full`, etc.).

**Option B. Anyone else.** Use `exports/entriverse.tokens.json` (DTCG format) with Style Dictionary, Tokens Studio, or any modern token tool. Build outputs for CSS variables, iOS asset catalog, Android XML, etc.

For both, also install the AI plugin (next section) so Claude Code, Cursor, or Copilot generate code that respects the system.

## Installing the AI plugin

This is a private GitHub repo. You need a GitHub Personal Access Token (PAT) with `repo` scope on this org/account before any of the install paths will work.

### One-time: set GITHUB_TOKEN

```bash
# Add to your shell profile (~/.zshrc, ~/.bashrc, etc.)
export GITHUB_TOKEN=ghp_yourPersonalAccessToken
```

The token needs at least `repo` (or `read:repo`) scope. Restart your shell after adding it.

### Claude Code (recommended)

Inside any Claude Code session:

```
/plugin marketplace add arun14949/entriverse
/plugin install entriverse@entriverse
```

Claude Code uses the `GITHUB_TOKEN` env var to clone the private marketplace. The skill becomes available as `/entriverse:entriverse` and triggers automatically when you build Entri UI.

To pull the latest spec after a release:

```
/plugin marketplace update entriverse
```

### Manual install (Cursor, Copilot, older Claude Code)

For tools without the Claude Code plugin manager.

**Personal install (works across all your repos):**

```bash
git clone git@github.com:arun14949/entriverse.git ~/entriverse  # SSH; needs your GitHub key on the account
mkdir -p ~/.claude/skills
cp -r ~/entriverse/skills/entriverse ~/.claude/skills/entriverse
```

**Per-repo install (commit the skill into your product repo):**

```bash
# From inside an Entri product repo, with GITHUB_TOKEN set:
GITHUB_TOKEN=$GITHUB_TOKEN bash -c 'curl -sL -H "Authorization: token $GITHUB_TOKEN" \
  https://raw.githubusercontent.com/arun14949/entriverse/main/scripts/install-in-repo.sh | bash'
git add .claude/skills/entriverse
git commit -m "Add EntriVerse skill"
```

The script clones the repo over HTTPS using `GITHUB_TOKEN`. Without the token, the curl will return a 404.

## Updating the spec

The skill folder duplicates the root spec file (Claude Code reads from inside the skill folder, so it must be self-contained). Whenever you edit `entriverse.md` at the root:

```bash
./scripts/sync.sh
```

This copies the spec into the skill, regenerates the JSON exports, and runs the linter. Commit the result. If you forget, the included pre-commit-style check in `sync.sh` will warn you.

When bumping the spec version, also bump `version` in `.claude-plugin/plugin.json` so installed plugins update on the next `/plugin marketplace update`.

## Contributing

Internal contribution flow.

1. Edit `entriverse.md` at the root. Always edit there, never inside `skills/entriverse/references/`.
2. Run `./scripts/sync.sh` to propagate changes.
3. Commit and push. Open a PR.
4. The design system owner reviews. Engineering reviews tokens that affect their consumption.
5. Update `CHANGELOG.md` with a one-line summary. Bump `version` in `.claude-plugin/plugin.json` to match.

For larger changes (new component, breaking token rename), bump the version in `CHANGELOG.md` and announce in the design team Slack so engineering can pull updates intentionally.

## Roadmap

Things on the list, not yet built:

- Audit script that scans generated React/SwiftUI code for hardcoded hex/px and flags it.
- Sync routine against the EntriVerse Figma file for catching drift in the other direction.
- Animation and motion tokens.
- Iconography spec.
- Subagents in the plugin (e.g., "Review my React component against EntriVerse").

## License

Proprietary. Copyright © 2026 Entri. All rights reserved. Internal use only — not for redistribution outside the Entri organization. See [LICENSE](LICENSE).

"Entri" and "EntriVerse" are trademarks of Entri.
