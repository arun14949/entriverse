# Changelog

All notable changes to EntriVerse are documented here. Format follows [Keep a Changelog](https://keepachangelog.com).

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
