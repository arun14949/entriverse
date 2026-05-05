# Changelog

All notable changes to EntriVerse are documented here. Format follows [Keep a Changelog](https://keepachangelog.com).

## [2.1.3] - 2026-05-05

### Fixed

- Checkbox inactive states now flip correctly in dark mode. Same fix as Radio in v2.1.1: `checkbox-inactive.textColor` and `checkbox-inactive-hover.textColor` previously referenced primitives (`grey-50`, `grey-80`) which don't flip with the cascade. Now reference `placeholder-icon` and `secondary-icon` — Light/Dark values match Figma exactly (light: grey-50/grey-80, dark: grey-100/grey-70).

### Added

- `checkbox-indeterminate` and `checkbox-indeterminate-disabled` component tokens. Indeterminate is the partial-selection state used in "select all" patterns where some-but-not-all children are checked. Visually it shares the active fill (primary blue background) but renders a horizontal dash instead of a check; the disabled variant uses the disabled fill.
- Selection controls prose section now documents the indeterminate state and its `checkbox-indeterminate` token shape.

## [2.1.2] - 2026-05-05

### Fixed

- `marketplace.json` plugin source switched from the relative-path form (`"source": "."`) to the explicit GitHub form (`"source": { "source": "github", "repo": "arun14949/entriverse" }`). The relative-path source is newer and not supported by older Claude Code versions, which produced "this plugin uses a source type your Claude Code version does not support" on install. The GitHub object form is broadly supported and works without requiring teammates to update Claude Code first.

## [2.1.1] - 2026-05-04

### Fixed

- Radio button inactive states now flip correctly in dark mode. `radio-inactive.textColor` and `radio-inactive-hover.textColor` previously referenced primitives (`grey-50`, `grey-80`) directly, which both leaked the primitive layer into the component layer **and** prevented the cascade from flipping their value in dark mode. They now reference `placeholder-icon` and `secondary-icon` respectively — reference tokens that carry the matching Light/Dark values per Figma (light: grey-50/grey-80, dark: grey-100/grey-70).

## [2.1.0] - 2026-04-29

Package the EntriVerse skill as a Claude Code marketplace plugin so it can be installed with two slash commands instead of a manual `cp -r`.

### Added

- `.claude-plugin/plugin.json` — plugin manifest with `name: entriverse`, `version: 2.1.0`, author, repo, license.
- `.claude-plugin/marketplace.json` — single-plugin marketplace manifest. The repo is now a self-contained marketplace listing the EntriVerse plugin.
- New install path documented in README: `/plugin marketplace add arun14949/entriverse` followed by `/plugin install entriverse@entriverse`. The skill is invoked as `/entriverse:entriverse` after install.

### Changed

- Skill folder renamed from `skill/` (singular) to `skills/entriverse/` to match the Claude Code plugin convention. `git mv` preserves history.
- `scripts/sync.sh` updated to read/write the new `skills/entriverse/references/entriverse.md` path. Lint behaviour unchanged.
- `scripts/install-personal.sh` and `scripts/install-in-repo.sh` updated to source from `skills/entriverse/`. Both flagged as legacy in their headers — they're for tools without Claude Code's plugin manager (Cursor, Copilot, older setups). New users should prefer the marketplace install.
- README install section restructured: marketplace install is now the primary path; manual `cp -r` install moved to a "Manual install" subsection for non-Claude-Code consumers.

### Note

Spec content is unchanged — this is a packaging release. No token names or values changed; product code consuming the spec needs no updates.

The license also switched from MIT to **proprietary** in this release. Internal Entri use only — see `LICENSE`. The repo remains publicly visible (no token needed to install) but use rights are restricted by the LICENSE.

## [2.0.0] - 2026-04-28

Sweeping realignment with the EntriVerse Figma source-of-truth (file `KjZWlCkNvEKuOnfPMXxqS9`, Kigen variables export). Two structural changes — both **breaking**.

### Changed — Typography rewrite

The typography block now mirrors Figma's 56-style `Typescale/*` taxonomy. Names follow `<tier>-<sans|serif>-<size>[-bold]`. Existing names that didn't fit the pattern are renamed; missing serif variants for Display and Heading are added; missing medium-weight variants for Body and Paragraph are added.

Token name changes (full migration table):

| Old | New |
|---|---|
| `display-xl` / `display-xl-bold` | `display-sans-xlarge` / `display-sans-xlarge-bold` |
| `display-lg` / `display-lg-bold` | `display-sans-large` / `display-sans-large-bold` |
| `display-sm` / `display-sm-bold` | `display-sans-small` / `display-sans-small-bold` |
| `heading-xl` / `heading-xl-bold` | `heading-sans-xlarge` / `heading-sans-xlarge-bold` |
| `heading-lg` / `heading-lg-bold` | `heading-sans-large` / `heading-sans-large-bold` |
| `heading-sm` / `heading-sm-bold` | `heading-sans-small` / `heading-sans-small-bold` |
| `subtitle-lg` | (removed — use `body-large-bold` instead) |
| `paragraph-lg` / `paragraph-lg-bold` | `body-large-para` / `body-large-para-bold` |
| `paragraph-default` / `paragraph-default-bold` | `body-para` / `body-para-bold` |
| `paragraph-serif` / `paragraph-serif-bold` | `body-serif-para` / `body-serif-para-bold` |
| `caption-paragraph` | `caption-para` |
| `caption-paragraph-small` | `caption-small-para` |
| `body-lg` / `body-lg-medium` / `body-lg-bold` | `body-large` / `body-large-medium` / `body-large-bold` |
| `body-default-medium` / `body-default-bold` | `body-medium` / `body-bold` |
| `caption` | `caption-default` |
| `caption-sm` | `caption-small` |
| `button` | `button-default` |

Value drift fixes — Figma uses `700` for sans bold weights where our spec previously used `600`. Affected tokens: `display-sans-large-bold`, `display-sans-xlarge-bold`, `display-sans-small-bold`, `body-large-bold`, `body-bold`, `body-para-bold`, `body-large-para-bold`. Heading `large` and `xlarge` line-height corrected from 1.25 to 1.2.

Added — Display and Heading serif variants (`display-serif-*`, `heading-serif-*`) for editorial layouts. Added `body-serif-medium`, `body-serif-large`, `body-serif-large-medium`, `body-serif-large-bold`. Added `caption-para-medium`, `caption-small-para-medium`, `caption-small-para-bold`.

### Changed — Reference token name flips

Reference tokens that previously used a `<category>-<role>` prefix now follow Figma's `<role>-<category>` flat naming. Same values, new names.

| Old | New |
|---|---|
| `text-primary` | `primary-text` |
| `text-subtext` | `subtext` |
| `text-placeholder` | `placeholder-text` |
| `text-timestamp` | `timestamp-text` |
| `text-inverted` | `inverted-text` |
| `text-disabled` | `disabled-text` |
| `text-link` / `text-link-hover` / `text-link-visited` | `link-text` / `link-text-hover` / `link-text-visited` |
| `icon-default` / `icon-secondary` / `icon-inverted` / `icon-placeholder` / `icon-disabled` | `default-icon` / `secondary-icon` / `inverted-icon` / `placeholder-icon` / `disabled-icon` |
| `icon-blue` / `green` / `purple` / `orange` / `yellow` / `brown` / `gold` | `blue-icon` / `green-icon` / etc. |
| `error` | `error-color` |
| `error-text` | `error-text-color` |
| `error-outline` | `error-outline-color` |
| `success` | `success-color` |
| `success-text` | `success-text-color` |
| `success-outline` | `success-outline-color` |
| `surface-blue-outline` | `blue-outline` |

`primary` and `on-primary` are unchanged — kept as the EntriVerse abstraction for the filled-CTA color path. Their values map to the same primitives Figma uses for `button-filled-default`.

## [1.1.0] - 2026-04-28

Replace the Material 2 elevation ladder with EntriVerse's own shadow scale, extracted directly from the Figma effect styles.

### Added

- `elevation:` block in the YAML front matter with nine named levels (`level-0` through `level-24`). Each level is a CSS-ready box-shadow string composed of two or three layered drop shadows.

### Changed

- Shadow alphas dropped from Material 2's 14 / 12 / 20% to EntriVerse's 10 / 6 / 8% for a softer, less-weighty depth cue.
- Offset / blur ratios adjusted per level to match the Figma source. For example, Level 1 was Material 2's `(0,1,1) + (0,2,1,-1) + (0,1,3)`; it is now `(0,1,3) + (0,2,1) + (0,1,1)` — a more pronounced primary shadow with calmer ambient layers.
- Prose section "Elevation & Depth" rewritten to reference the new tokens by name and document the divergence from Material 2.
- Light and Dark modes still share the same shadow stack (no per-mode override).

## [1.0.0] - 2026-04-28

Realign reference-token names and structure with the EntriVerse Figma source-of-truth (`KjZWlCkNvEKuOnfPMXxqS9`). **Breaking change** — anything consuming the old token names must update.

### Changed

- `surface-primary` → `primary-container` (still pure-white in Light Mode; matches Figma `Surface/primary-container`).
- `surface-secondary` → `secondary-container` (matches Figma `Surface/secondary-container`).
- `background` → `background-default` (matches Figma `Surface/background-default`).
- `inverted-bg` → `inverted-bg-default` (matches Figma `Surface/inverted-bg-default`).
- The tonal-blue container was previously called `primary-container` (`blue-50`). It is now `blue-container`, part of the Entri Blue family.
- The corresponding text and hover tokens renamed: `on-primary-container` → `on-blue-container`, `primary-hover` → `blue-hover`.
- Component tokens that referenced any of the above were updated to point at the new names. Light/Dark values are unchanged.

### Added

- `on-blue: pure-white` reference token, completing the Entri Blue family so it mirrors every other accent (`on-green`, `on-purple`, etc.). Matches Figma `Entri Blue/on-blue`.

### Removed

- `surface-primary`, `surface-secondary`, `background`, `inverted-bg`, `on-primary-container`, `primary-hover` — all replaced by the renamed tokens above. The previous `primary-container` (which meant the tonal-blue container) is replaced by `blue-container`.

### Migration

Search-and-replace in product code:

| Old | New |
|---|---|
| `surface-primary` | `primary-container` |
| `surface-secondary` | `secondary-container` |
| `background` (the reference token, not the CSS property) | `background-default` |
| `inverted-bg` | `inverted-bg-default` |
| `primary-container` (when it meant tonal blue) | `blue-container` |
| `on-primary-container` | `on-blue-container` |
| `primary-hover` | `blue-hover` |

`primary` and `on-primary` are unchanged.

## [0.1.0] - 2026-04-28

Initial spec.

### Added

- Three-tier token architecture: global primitives, reference tokens, component tokens.
- Full color ramps for blue, green, purple, orange, yellow, brown, turquoise, red, gold, plus 25-step neutral scale.
- 82 reference tokens covering brand, accents, surfaces, text, icons, error, success.
- 34 typography tokens (Inter and Noto Serif) covering Display, Heading, Subtitle, Paragraph, Body, Caption, Label, Button.
- 10 corner radius levels.
- 13 spacing levels.
- Material 2 elevation reference.
- 64 component tokens covering 16 component families (buttons, inputs, cards, radio, checkbox, switch, selection tiles, nav, tabs, segmented, progress, slider, snackbar, tooltip, tags, FAB).
- Dark Mode override block in the prose section.
- Overlay system documentation for scrims, washes, image overlays.
- Claude Code / Claude.ai skill in `skill/` folder.
- DTCG and Tailwind exports in `exports/`.
- Sync and install scripts.
