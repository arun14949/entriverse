---
version: alpha
name: EntriVerse
description: Entri's cross-platform design system. Serves learners across 11+ regional Indian languages on web, Android, and iOS. Organized in three token layers (Global primitives, Reference semantic tokens, Component tokens) with light and dark modes. Values below reflect Light Mode. Dark Mode lives as a reference-token override block in the prose section.

colors:
  # ============================================================================
  # GLOBAL PRIMITIVES
  # ----------------------------------------------------------------------------
  # Raw color ramps. Do not consume these directly. They exist so the
  # reference layer can point at them; changing a primitive propagates through
  # every reference token that references it, and through every component
  # that references those reference tokens.
  # ============================================================================

  blue-50: "#E6F3FF"
  blue-100: "#B0DAFF"
  blue-200: "#8AC9FF"
  blue-300: "#54B0FF"
  blue-400: "#33A1FF"
  blue-500: "#0089FF"
  blue-600: "#007DE8"
  blue-700: "#0061B5"
  blue-800: "#004B8C"
  blue-900: "#003A6B"

  green-50: "#E6F2EF"
  green-100: "#B0D8CC"
  green-200: "#8AC5B4"
  green-300: "#54AA92"
  green-400: "#33997D"
  green-500: "#00805C"
  green-600: "#007454"
  green-700: "#005B41"
  green-800: "#004633"
  green-900: "#003627"

  purple-50: "#F2ECF5"
  purple-100: "#D7C3DF"
  purple-200: "#C4A6D0"
  purple-300: "#A97EBA"
  purple-400: "#9965AD"
  purple-500: "#7F3E98"
  purple-600: "#74388A"
  purple-700: "#5A2C6C"
  purple-800: "#462254"
  purple-900: "#351A40"

  orange-50: "#FFF6E6"
  orange-100: "#FFE2B0"
  orange-200: "#FFD38A"
  orange-300: "#FFBF54"
  orange-400: "#FFB333"
  orange-500: "#FFA000"
  orange-600: "#E89200"
  orange-700: "#B57200"
  orange-800: "#8C5800"
  orange-900: "#6B4300"

  yellow-50: "#FFFBEA"
  yellow-100: "#FFF2BC"
  yellow-200: "#FFEB9C"
  yellow-300: "#FFE26F"
  yellow-400: "#FFDD53"
  yellow-500: "#FFD428"
  yellow-600: "#E8C124"
  yellow-700: "#B5971C"
  yellow-800: "#8C7516"
  yellow-900: "#6B5911"

  brown-50: "#F9F2F0"
  brown-100: "#EBD5D0"
  brown-200: "#E1C1B9"
  brown-300: "#D3A599"
  brown-400: "#CB9485"
  brown-500: "#BE7967"
  brown-600: "#AD6E5E"
  brown-700: "#875649"
  brown-800: "#694339"
  brown-900: "#50332B"

  turquoise-50: "#EBFAF8"
  turquoise-100: "#C2F1E8"
  turquoise-200: "#A4EADD"
  turquoise-300: "#7AE0CD"
  turquoise-400: "#61DAC3"
  turquoise-500: "#39D1B4"
  turquoise-600: "#34BEA4"
  turquoise-700: "#289480"
  turquoise-800: "#1F7363"
  turquoise-900: "#18584C"

  red-50: "#FEEFEF"
  red-100: "#FCCCCC"
  red-200: "#FBB3B4"
  red-300: "#F99091"
  red-400: "#F87B7C"
  red-500: "#F65A5B"
  red-600: "#E05253"
  red-700: "#AF4041"
  red-800: "#873232"
  red-900: "#672626"

  gold-50: "#FAF5E7"
  gold-100: "#F1E2B8"
  gold-200: "#EBD495"
  gold-300: "#DFBC5A"
  gold-400: "#DBB242"
  gold-500: "#D29F13"
  gold-600: "#BF9111"
  gold-700: "#95710D"
  gold-800: "#74570A"
  gold-900: "#584308"

  pure-white: "#FFFFFF"
  grey-10: "#FAFAFA"
  grey-20: "#F6F6F6"
  grey-30: "#F0F0F0"
  grey-40: "#CFCFCF"
  grey-50: "#B2B2B2"
  grey-60: "#949494"
  grey-70: "#808080"
  grey-80: "#757575"
  grey-90: "#616161"
  grey-100: "#4A4A4A"
  grey-200: "#383838"
  grey-300: "#363636"
  grey-400: "#333333"
  grey-500: "#2E2E2E"
  grey-600: "#2C2C2C"
  grey-700: "#272727"
  grey-800: "#252525"
  grey-900: "#232323"
  grey-1000: "#212121"
  grey-1100: "#1E1E1E"
  grey-1200: "#1A1A1A"
  grey-1300: "#171717"
  grey-1400: "#121212"
  pure-black: "#000000"

  # ============================================================================
  # REFERENCE TOKENS (semantic layer — agents consume these)
  # ============================================================================

  primary: "{colors.blue-700}"
  on-primary: "{colors.pure-white}"
  primary-container: "{colors.blue-50}"
  on-primary-container: "{colors.blue-800}"
  primary-hover: "{colors.blue-800}"

  entri-blue: "{colors.blue-500}"

  entri-green: "{colors.green-500}"
  on-green: "{colors.pure-white}"
  green-container: "{colors.green-50}"
  on-green-container: "{colors.green-800}"
  green-hover: "{colors.green-800}"

  entri-purple: "{colors.purple-500}"
  on-purple: "{colors.pure-white}"
  purple-container: "{colors.purple-50}"
  on-purple-container: "{colors.purple-800}"
  purple-hover: "{colors.purple-800}"

  entri-orange: "{colors.orange-500}"
  on-orange: "{colors.grey-1000}"
  orange-container: "{colors.orange-50}"
  on-orange-container: "{colors.orange-800}"
  orange-hover: "{colors.orange-800}"

  entri-yellow: "{colors.yellow-500}"
  on-yellow: "{colors.grey-1000}"
  yellow-container: "{colors.yellow-50}"
  on-yellow-container: "{colors.yellow-800}"
  yellow-hover: "{colors.yellow-800}"

  entri-brown: "{colors.brown-500}"
  on-brown: "{colors.pure-white}"
  brown-container: "{colors.brown-50}"
  on-brown-container: "{colors.brown-800}"
  brown-hover: "{colors.brown-800}"

  entri-gold: "{colors.gold-500}"
  on-gold: "{colors.grey-1000}"
  gold-container: "{colors.gold-50}"
  on-gold-container: "{colors.gold-800}"
  gold-hover: "{colors.gold-800}"

  background: "{colors.pure-white}"
  background-grey: "{colors.grey-30}"
  surface-primary: "{colors.pure-white}"
  surface-secondary: "{colors.grey-20}"
  surface-outline: "{colors.grey-30}"
  surface-outline-disabled: "{colors.grey-10}"
  surface-blue-outline: "{colors.blue-700}"
  inverted-bg: "{colors.grey-1400}"
  inverted-bg-grey: "{colors.grey-1100}"

  text-primary: "{colors.grey-1000}"
  text-subtext: "{colors.grey-90}"
  text-placeholder: "{colors.grey-60}"
  text-timestamp: "{colors.grey-50}"
  text-inverted: "{colors.grey-30}"
  text-disabled: "{colors.grey-40}"
  text-link: "{colors.blue-700}"
  text-link-hover: "{colors.blue-800}"
  text-link-visited: "{colors.purple-700}"

  icon-default: "{colors.grey-1000}"
  icon-secondary: "{colors.grey-80}"
  icon-inverted: "{colors.grey-30}"
  icon-placeholder: "{colors.grey-50}"
  icon-disabled: "{colors.grey-40}"
  icon-blue: "{colors.blue-500}"
  icon-green: "{colors.green-500}"
  icon-purple: "{colors.purple-500}"
  icon-orange: "{colors.orange-500}"
  icon-yellow: "{colors.yellow-500}"
  icon-brown: "{colors.brown-500}"
  icon-gold: "{colors.gold-500}"

  error: "{colors.red-500}"
  on-error: "{colors.pure-white}"
  error-text: "{colors.red-500}"
  error-outline: "{colors.red-800}"
  error-container: "{colors.red-50}"
  on-error-container: "{colors.red-800}"
  error-hover: "{colors.red-800}"

  success: "{colors.green-500}"
  on-success: "{colors.pure-white}"
  success-text: "{colors.green-500}"
  success-outline: "{colors.green-800}"
  success-container: "{colors.green-50}"
  on-success-container: "{colors.green-800}"
  success-hover: "{colors.green-800}"

  fixed-white: "{colors.pure-white}"
  fixed-black: "{colors.grey-1000}"
  fixed-pure-black: "{colors.pure-black}"

typography:
  display-xl: { fontFamily: Inter, fontSize: 48px, fontWeight: 300, lineHeight: 1.2, letterSpacing: -1.5px }
  display-xl-bold: { fontFamily: Inter, fontSize: 48px, fontWeight: 600, lineHeight: 1.2, letterSpacing: -1.5px }
  display-lg: { fontFamily: Inter, fontSize: 40px, fontWeight: 300, lineHeight: 1.2, letterSpacing: -0.5px }
  display-lg-bold: { fontFamily: Inter, fontSize: 40px, fontWeight: 600, lineHeight: 1.2, letterSpacing: -0.5px }
  display-sm: { fontFamily: Inter, fontSize: 32px, fontWeight: 400, lineHeight: 1.2, letterSpacing: 0em }
  display-sm-bold: { fontFamily: Inter, fontSize: 32px, fontWeight: 600, lineHeight: 1.2, letterSpacing: 0em }
  heading-xl: { fontFamily: Inter, fontSize: 24px, fontWeight: 400, lineHeight: 1.25, letterSpacing: 0.25px }
  heading-xl-bold: { fontFamily: Inter, fontSize: 24px, fontWeight: 700, lineHeight: 1.25, letterSpacing: 0.25px }
  heading-lg: { fontFamily: Inter, fontSize: 20px, fontWeight: 400, lineHeight: 1.25, letterSpacing: 0em }
  heading-lg-bold: { fontFamily: Inter, fontSize: 20px, fontWeight: 700, lineHeight: 1.25, letterSpacing: 0em }
  heading-sm: { fontFamily: Inter, fontSize: 18px, fontWeight: 500, lineHeight: 1.25, letterSpacing: 0.15px }
  heading-sm-bold: { fontFamily: Inter, fontSize: 18px, fontWeight: 700, lineHeight: 1.25, letterSpacing: 0.15px }
  subtitle-lg: { fontFamily: Inter, fontSize: 16px, fontWeight: 700, lineHeight: 1.25, letterSpacing: 0.15px }
  paragraph-lg: { fontFamily: Inter, fontSize: 16px, fontWeight: 400, lineHeight: 1.5, letterSpacing: 0em }
  paragraph-lg-bold: { fontFamily: Inter, fontSize: 16px, fontWeight: 600, lineHeight: 1.5, letterSpacing: 0em }
  paragraph-default: { fontFamily: Inter, fontSize: 14px, fontWeight: 400, lineHeight: 1.6, letterSpacing: 0.25px }
  paragraph-default-bold: { fontFamily: Inter, fontSize: 14px, fontWeight: 600, lineHeight: 1.6, letterSpacing: 0.25px }
  paragraph-serif: { fontFamily: Noto Serif, fontSize: 14px, fontWeight: 400, lineHeight: 1.5, letterSpacing: 0.25px }
  paragraph-serif-bold: { fontFamily: Noto Serif, fontSize: 14px, fontWeight: 700, lineHeight: 1.5, letterSpacing: 0.25px }
  caption-paragraph: { fontFamily: Inter, fontSize: 12px, fontWeight: 400, lineHeight: 1.5, letterSpacing: 0.25px }
  caption-paragraph-small: { fontFamily: Inter, fontSize: 10px, fontWeight: 400, lineHeight: 1.65, letterSpacing: 0.25px }
  body-lg: { fontFamily: Inter, fontSize: 16px, fontWeight: 400, lineHeight: 1.2, letterSpacing: 0em }
  body-lg-medium: { fontFamily: Inter, fontSize: 16px, fontWeight: 500, lineHeight: 1.25, letterSpacing: 0em }
  body-lg-bold: { fontFamily: Inter, fontSize: 16px, fontWeight: 600, lineHeight: 1.25, letterSpacing: 0em }
  body-default: { fontFamily: Inter, fontSize: 14px, fontWeight: 400, lineHeight: 1.2, letterSpacing: 0.25px }
  body-default-medium: { fontFamily: Inter, fontSize: 14px, fontWeight: 500, lineHeight: 1.2, letterSpacing: 0.25px }
  body-default-bold: { fontFamily: Inter, fontSize: 14px, fontWeight: 600, lineHeight: 1.2, letterSpacing: 0.25px }
  body-serif: { fontFamily: Noto Serif, fontSize: 14px, fontWeight: 400, lineHeight: 1.25, letterSpacing: 0.25px }
  caption: { fontFamily: Inter, fontSize: 12px, fontWeight: 400, lineHeight: 1.2, letterSpacing: 0.25px }
  caption-medium: { fontFamily: Inter, fontSize: 12px, fontWeight: 500, lineHeight: 1.2, letterSpacing: 0.25px }
  caption-bold: { fontFamily: Inter, fontSize: 12px, fontWeight: 700, lineHeight: 1.2, letterSpacing: 0.25px }
  caption-sm: { fontFamily: Inter, fontSize: 10px, fontWeight: 400, lineHeight: 1.2, letterSpacing: 0.25px }
  label-text: { fontFamily: Inter, fontSize: 8px, fontWeight: 700, lineHeight: 1, letterSpacing: 1px }
  button: { fontFamily: Inter, fontSize: 14px, fontWeight: 700, lineHeight: 1.15, letterSpacing: 0.5px }

rounded:
  none: 0px
  xs: 2px
  s: 4px
  m: 8px
  l: 16px
  xl: 24px
  2xl: 32px
  3xl: 40px
  4xl: 48px
  full: 200px

spacing:
  none: 0px
  xs: 2px
  s: 4px
  m: 8px
  l: 12px
  xl: 16px
  2xl: 24px
  3xl: 32px
  4xl: 40px
  5xl: 48px
  6xl: 56px
  7xl: 64px
  8xl: 120px

components:
  button-filled:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-filled-hover:
    backgroundColor: "{colors.primary-hover}"
    textColor: "{colors.on-primary}"
  button-filled-disabled:
    backgroundColor: "{colors.background-grey}"
    textColor: "{colors.text-disabled}"

  button-tonal:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.on-primary-container}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-tonal-hover:
    backgroundColor: "{colors.blue-100}"
    textColor: "{colors.on-primary-container}"
  button-tonal-disabled:
    backgroundColor: "{colors.background-grey}"
    textColor: "{colors.text-disabled}"

  button-outlined:
    backgroundColor: "{colors.background}"
    textColor: "{colors.on-primary-container}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-outlined-hover:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.on-primary-container}"

  button-secondary-outlined:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-secondary-outlined-hover:
    backgroundColor: "{colors.surface-secondary}"
    textColor: "{colors.text-primary}"

  button-destructive:
    backgroundColor: "{colors.red-700}"
    textColor: "{colors.on-error}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-destructive-hover:
    backgroundColor: "{colors.error-hover}"
    textColor: "{colors.on-error}"

  button-success:
    backgroundColor: "{colors.green-600}"
    textColor: "{colors.on-success}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-success-hover:
    backgroundColor: "{colors.success-hover}"
    textColor: "{colors.on-success}"

  button-text:
    backgroundColor: "#00000000"
    textColor: "{colors.text-link}"
    rounded: "{rounded.full}"
    typography: "{typography.button}"
    padding: 12px
  button-text-hover:
    backgroundColor: "{colors.blue-100}"
    textColor: "{colors.on-primary-container}"

  fab:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.l}"
    typography: "{typography.button}"
  fab-hover:
    backgroundColor: "{colors.primary-hover}"
    textColor: "{colors.on-primary}"

  input:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.s}"
    typography: "{typography.body-default}"
    padding: 12px
  input-focused:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
  input-error:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
  input-success:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
  input-disabled:
    backgroundColor: "{colors.surface-outline-disabled}"
    textColor: "{colors.text-disabled}"

  card:
    backgroundColor: "{colors.surface-primary}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.m}"
    padding: 16px
  card-secondary:
    backgroundColor: "{colors.surface-secondary}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.m}"
    padding: 16px

  radio-active:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
  radio-active-hover:
    backgroundColor: "{colors.primary-hover}"
    textColor: "{colors.on-primary}"
  radio-inactive:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-50}"
  radio-inactive-hover:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-80}"
  radio-disabled:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-disabled}"

  checkbox-active:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
  checkbox-active-hover:
    backgroundColor: "{colors.primary-hover}"
    textColor: "{colors.on-primary}"
  checkbox-inactive:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-50}"
  checkbox-inactive-hover:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-80}"
  checkbox-disabled:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-disabled}"

  switch-active:
    backgroundColor: "{colors.entri-blue}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.full}"
  switch-active-pressed:
    backgroundColor: "{colors.blue-800}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.full}"
  switch-inactive:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.grey-80}"
    rounded: "{rounded.full}"
  switch-disabled:
    backgroundColor: "{colors.grey-40}"
    textColor: "{colors.grey-50}"
    rounded: "{rounded.full}"

  selection-active:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.m}"
  selection-inactive:
    backgroundColor: "{colors.surface-secondary}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.m}"
  selection-disabled:
    backgroundColor: "{colors.grey-40}"
    textColor: "{colors.text-disabled}"
    rounded: "{rounded.m}"
  selection-gold-active:
    backgroundColor: "{colors.gold-container}"
    textColor: "{colors.on-gold-container}"
    rounded: "{rounded.m}"

  nav-bar:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.none}"
  nav-icon-active:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.primary}"
    rounded: "{rounded.full}"
  nav-icon-inactive:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-80}"

  tab-active:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.none}"
    typography: "{typography.body-default-medium}"
  tab-inactive:
    backgroundColor: "{colors.background}"
    textColor: "{colors.grey-80}"
    typography: "{typography.body-default}"

  segmented-active:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.on-primary-container}"
    rounded: "{rounded.s}"
    typography: "{typography.button}"
  segmented-inactive:
    backgroundColor: "{colors.background}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.s}"
    typography: "{typography.button}"

  progress-linear:
    backgroundColor: "#000000"  # use at 20% opacity in implementation
    textColor: "{colors.primary}"
  progress-linear-indicator:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"

  slider-track-active:
    backgroundColor: "{colors.entri-blue}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.full}"
  slider-track-inactive:
    backgroundColor: "{colors.primary-container}"
    textColor: "{colors.grey-80}"
    rounded: "{rounded.full}"
  slider-handle:
    backgroundColor: "{colors.entri-blue}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.full}"
  slider-disabled:
    backgroundColor: "{colors.grey-1000}"
    textColor: "{colors.grey-1000}"

  snackbar:
    backgroundColor: "{colors.inverted-bg}"
    textColor: "{colors.text-inverted}"
    rounded: "{rounded.s}"
    typography: "{typography.body-default}"
    padding: 12px

  tooltip:
    backgroundColor: "{colors.inverted-bg}"
    textColor: "{colors.text-inverted}"
    rounded: "{rounded.s}"
    typography: "{typography.caption}"
    padding: 8px

  tag-blue:
    backgroundColor: "{colors.blue-700}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
  tag-green:
    backgroundColor: "{colors.green-700}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
  tag-purple:
    backgroundColor: "{colors.purple-700}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
  tag-orange:
    backgroundColor: "{colors.orange-500}"
    textColor: "{colors.fixed-black}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
  tag-red:
    backgroundColor: "{colors.red-700}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
  tag-black:
    backgroundColor: "{colors.grey-1400}"
    textColor: "{colors.fixed-white}"
    rounded: "{rounded.s}"
    typography: "{typography.caption-bold}"
---

# EntriVerse

## Overview

EntriVerse is the design system behind Entri, a multi-platform edtech product. The system runs on web, Android, and iOS and supports 11 regional Indian scripts (Malayalam, Tamil, Hindi, Kannada, Telugu, Bengali, Gujarati, Marathi, Punjabi, Odia, Assamese) plus Latin.

The system is organized in three token layers. **Global primitives** are raw color ramps, spacing values, and typography primitives. **Reference tokens** are the semantic layer that maps meaning (`primary`, `text-subtext`, `error`) onto primitives. **Component tokens** map semantic tokens onto component-level roles (`button-filled`, `radio-active`).

Agents consume reference tokens and component tokens. Globals exist so a single primitive change (say, shifting `blue-700`) cascades automatically through every reference token that points at it, and through every component that points at those reference tokens. Do not consume globals directly in product code.

The system supports Light Mode and Dark Mode. The YAML front matter above reflects Light Mode. Dark Mode lives in the **Dark Mode** section below as a reference-token override block. Components do not get redefined for dark mode because they reference semantic tokens by name, and the override block remaps those names to dark variants.

## Colors

EntriVerse has a two-tier color identity: a single interaction color and an expressive accent palette.

**Interaction is always blue.** `primary` maps to `blue-700` (`#0061B5`). It drives filled CTA buttons, active radios and checkboxes, progress indicators, link text, and focused input outlines. `entri-blue` maps to `blue-500` (`#0089FF`) — the identity color for logos, switch tracks, and the input cursor. The identity blue is brighter and does not pass AA as a filled background with white text, so never use it for filled CTAs.

**The accent palette** has seven colors: blue, plus six expressive accents (green, purple, orange, yellow, brown, gold) and a supplementary turquoise for data visualization. Each accent has the same token shape — a main (`entri-green`), an on-color (`on-green`), a container (`green-container`), an on-container (`on-green-container`), and a hover (`green-hover`).

**Surfaces are layered tonally.** `background` is pure white. `background-grey` is used when cards need separation from the page. `surface-secondary` is for elevated containers. `inverted-bg` is near-black, used for snackbars and tooltips even in Light Mode so they float above all surfaces.

**Text is a six-tier hierarchy.** `text-primary` for titles and highlighted copy, `text-subtext` for body paragraphs, `text-placeholder` for input placeholders, `text-timestamp` for metadata that should recede below subtext, `text-disabled` for non-actionable content, `text-inverted` for text over non-background surfaces.

**The overlay system** covers four families with 7 opacity levels each (0%, 20%, 40%, 60%, 80%, 90%, 100%). These aren't in the YAML token section because the spec only accepts 6-digit hex — use the CSS values below.

- `overlay-dark-N` (mode-dependent): black with alpha in Light Mode, white with alpha in Dark Mode. Flips based on theme.
- `overlay-light-N` (mode-dependent): white with alpha in Light Mode, black with alpha in Dark Mode. Flips based on theme.
- `overlay-fixed-black-N`: always `rgba(0,0,0,alpha)`. Does not flip.
- `overlay-fixed-white-N`: always `rgba(255,255,255,alpha)`. Does not flip.

Opacity levels map to: `0 → 0%`, `1 → 20%` (0x33), `2 → 40%` (0x66), `3 → 60%` (0x99), `4 → 80%` (0xCC), `5 → 90%` (0xE5), `6 → 100%`. For a scrim behind a modal use `overlay-dark-3` (`rgba(0,0,0,0.6)`). For a pressed-state wash use `overlay-dark-1` (`rgba(0,0,0,0.2)`). Never hand-write these values — consume by name.

## Typography

Two typefaces: **Inter** for everything, **Noto Serif** for long-form reading contexts like exam passages and editorial content. Both cover the 11 regional Indian scripts plus Latin.

Four tiers, each with regular and bold variants. **Display** (32/40/48) for marketing surfaces and hero sections. Display L and XL regular weights are `300` (Light), not `400` — large display type uses a lighter weight intentionally. **Heading** (18/20/24) for section and card titles. **Subtitle** for elevated single-line headings inside content. **Paragraph** and **Body** share the same sizes (12/14/16) but differ in line height. **Caption**, **Label**, and **Button** for UI chrome.

**Body vs Paragraph.** Same sizes, different line heights. Body uses line-height `1.2` for single-line UI — buttons, list items, labels, single-line card titles. Paragraph uses line-height `1.5-1.6` for multi-line reading flows. Pick by whether the text wraps.

Button text is Bold (700) at 14px with 0.5px letter spacing — widely spaced to increase legibility at small sizes and to distinguish clickable elements.

**`label-text` (8px, ALL CAPS, 1px letter spacing) is for tags only.** Never use it in body copy or reading flows.

Do not introduce italic variants — regional Indian fonts render italics inconsistently.

## Layout

The spacing scale runs 13 steps from `none` to `8xl`. Working set for most screens is `m` (8px) through `2xl` (24px).

The small end is tight (`xs: 2`, `s: 4`) for icon-label pairs, badge internals, and dense list rows. Vertical stacks use `m` or `l` between related items and `2xl` to separate sections. Horizontal padding is `xl` on mobile and `2xl` on tablet and web. The jump from `7xl` (64) to `8xl` (120) is intentional — `8xl` is reserved for section breaks on marketing and empty-state layouts.

Stay on the scale. 10px, 14px, 20px are not EntriVerse values.

## Elevation & Depth

EntriVerse uses **Material 2 elevation**. Nine levels (`0, 1, 2, 4, 6, 8, 12, 16, 24`) corresponding to Material 2 dp values, each composed of three layered drop shadows for natural depth. Both Light and Dark modes have the full ladder.

Pick a level by Material 2 convention: cards at Level 1, raised surfaces and selection states at Level 2, FABs and snackbars at Level 6, navigation drawers and side sheets at Level 16, modal dialogs at Level 24. Do not drop heavy shadows on inline cards to add visual importance — use `surface-secondary` fill or a border instead.

Tooltips and snackbars use `inverted-bg` (`#121212`) even in Light Mode to float cleanly above any surface layer.

## Shapes

Corner radius is expressive, not uniform. Ten levels. `none` (0) for edge-to-edge chrome — app bars, tabs, banners, full-screen dialogs. `xs` (2) for snackbars and menus. `s` (4) for chips, tooltips, text fields, and tags. `m` (8) for cards, the default content container. `l` (16) for navigation drawers and FABs. `xl` (24) through `4xl` (48) for docked sheets and dialogs at progressively larger sizes. `full` (200) for pill-shaped interactive elements — buttons, icon buttons, badges, switches, sliders, search bars. The 200px value handles large touch targets cleanly without hitting 9999 edge cases.

Do not mix radius families within a visual group. A button (`full`) inside a card (`m`) is fine. Two chips side by side using different radii is not.

## Components

**Buttons** have seven variants plus a FAB. **Filled** is the primary CTA (blue-700 on white). **Tonal** is low-emphasis (blue-50 container with dark-blue text). **Outlined** is a white fill with blue border. **Secondary outlined** is the neutral outlined variant. **Destructive** handles delete and cancel-subscription. **Success** handles confirm and enroll. **Text** is tertiary with no container. All buttons use `rounded.full`.

**Inputs** use `rounded.s` (4px) to read as distinct from buttons. Labels float above using `text-placeholder` color, switching to `entri-blue` on focus. Supporting text sits below in `caption` typography and shifts to `error-text` or `success-text` on state changes.

**Cards** come in two variants — `card` (white) for prominent content, `card-secondary` (grey) for supporting content. Padding 16px.

**Selection controls** (radio, checkbox, switch) use `primary` for active and `grey-50` for inactive. The switch uniquely uses `entri-blue` (the identity color, not `primary`) for its active track.

**Selection tiles** (plan chooser, quiz options, preference cards) use `selection-active` when chosen, `selection-inactive` otherwise. The gold variant is reserved for premium plan selection.

**Tags** come in six color variants. Each uses the 700-level dark variant of its accent (blue-700, green-700, purple-700, red-700) with white text for AA contrast. Orange is the exception — it uses the 500 with dark text.

**Segmented buttons** live between tabs and chips — used when the choice persists like a filter. Active uses `primary-container`, inactive is transparent with text-primary.

**Progress and slider** tracks use `entri-blue` for the active fill. Sliders use `rounded.full`. Progress bars use the overlay system for their inactive track (20% black).

## Dark Mode

The three-tier cascade lets dark mode live as a small set of reference token overrides. Component definitions do not change. They reference semantic tokens like `{colors.primary}` and `{colors.background}`, so remapping those tokens once flips the entire system.

Apply these overrides on top of the front matter values when rendering Dark Mode. Anything not listed below stays at its Light Mode value (this includes all global primitives, the typography scale, the spacing scale, the corner radius scale, and every component definition).

```yaml
# Dark Mode reference token overrides
# Replace each reference token below with the listed primitive when in Dark Mode

# Brand & action — hierarchy inverts on dark surfaces
primary: "{colors.blue-200}"
on-primary: "{colors.blue-900}"
primary-container: "{colors.blue-900}"
on-primary-container: "{colors.blue-100}"
primary-hover: "{colors.blue-300}"

entri-blue: "{colors.blue-400}"

# Accent palette — each main shifts up to its 400, containers go to 900
entri-green: "{colors.green-400}"
on-green: "{colors.green-900}"
green-container: "{colors.green-900}"
on-green-container: "{colors.green-100}"
green-hover: "{colors.green-300}"

entri-purple: "{colors.purple-400}"
on-purple: "{colors.purple-900}"
purple-container: "{colors.purple-900}"
on-purple-container: "{colors.purple-100}"
purple-hover: "{colors.purple-300}"

entri-orange: "{colors.orange-400}"
on-orange: "{colors.orange-900}"
orange-container: "{colors.orange-900}"
on-orange-container: "{colors.orange-100}"
orange-hover: "{colors.orange-300}"

entri-yellow: "{colors.yellow-400}"
on-yellow: "{colors.yellow-900}"
yellow-container: "{colors.yellow-900}"
on-yellow-container: "{colors.yellow-100}"
yellow-hover: "{colors.yellow-300}"

entri-brown: "{colors.brown-400}"
on-brown: "{colors.brown-900}"
brown-container: "{colors.brown-900}"
on-brown-container: "{colors.brown-100}"
brown-hover: "{colors.brown-300}"

entri-gold: "{colors.gold-400}"
on-gold: "{colors.gold-900}"
gold-container: "{colors.gold-900}"
on-gold-container: "{colors.gold-100}"
gold-hover: "{colors.gold-300}"

# Surfaces — Material Dark standard, near-black backgrounds with lifted cards
background: "{colors.grey-1400}"
background-grey: "{colors.pure-black}"
surface-primary: "{colors.grey-1100}"
surface-secondary: "{colors.grey-1200}"
surface-outline: "{colors.grey-600}"
surface-outline-disabled: "{colors.grey-1300}"
surface-blue-outline: "{colors.blue-200}"
inverted-bg: "{colors.grey-10}"
inverted-bg-grey: "{colors.grey-20}"

# Text — full hierarchy inverts
text-primary: "{colors.grey-30}"
text-subtext: "{colors.grey-60}"
text-placeholder: "{colors.grey-90}"
text-timestamp: "{colors.grey-100}"
text-inverted: "{colors.grey-1000}"
text-disabled: "{colors.grey-300}"
text-link: "{colors.blue-100}"
text-link-hover: "{colors.blue-300}"
text-link-visited: "{colors.purple-200}"

# Icons
icon-default: "{colors.grey-30}"
icon-secondary: "{colors.grey-70}"
icon-inverted: "{colors.grey-1000}"
icon-placeholder: "{colors.grey-100}"
icon-disabled: "{colors.grey-300}"
icon-blue: "{colors.blue-400}"
icon-green: "{colors.green-400}"
icon-purple: "{colors.purple-400}"
icon-orange: "{colors.orange-400}"
icon-yellow: "{colors.yellow-400}"
icon-brown: "{colors.brown-400}"
icon-gold: "{colors.gold-400}"

# Error & Success — 400-level tints so they read on dark surfaces
error: "{colors.red-400}"
on-error: "{colors.red-900}"
error-text: "{colors.red-400}"
error-outline: "{colors.red-100}"
error-container: "{colors.red-900}"
on-error-container: "{colors.red-100}"
error-hover: "{colors.red-300}"

success: "{colors.green-400}"
on-success: "{colors.green-900}"
success-text: "{colors.green-400}"
success-outline: "{colors.green-100}"
success-container: "{colors.green-900}"
on-success-container: "{colors.green-100}"
success-hover: "{colors.green-300}"

# Fixed tokens do not change between modes
# fixed-white, fixed-black, fixed-pure-black stay at their Light Mode values
```

### Tag treatment in Dark Mode

Tags need a small structural override beyond the reference layer. In Light Mode tags use 700-level dark containers with white text. In Dark Mode this flips to 200-level light containers with 900-level dark text. Apply these component-level overrides when rendering Dark Mode:

```yaml
tag-blue:    { backgroundColor: "{colors.blue-200}",   textColor: "{colors.blue-900}" }
tag-green:   { backgroundColor: "{colors.green-200}",  textColor: "{colors.green-900}" }
tag-purple:  { backgroundColor: "{colors.purple-200}", textColor: "{colors.purple-900}" }
tag-orange:  { backgroundColor: "{colors.orange-300}", textColor: "{colors.orange-900}" }
tag-red:     { backgroundColor: "{colors.red-200}",    textColor: "{colors.red-900}" }
tag-black:   { backgroundColor: "{colors.grey-30}",    textColor: "{colors.grey-1400}" }
```

### Implementation note

When generating the Dark Mode token export (CSS custom properties, Tailwind dark variant, iOS asset catalog dark appearance, Android `values-night`), apply the overrides above on top of the front matter. Components do not need re-export. They keep their semantic references and inherit the new values automatically.

### Overlay behaviour in Dark Mode

Mode-dependent overlays flip their underlying color: `overlay-dark-N` becomes `rgba(255,255,255,alpha)` in Dark Mode (a light wash on dark surfaces). `overlay-light-N` becomes `rgba(0,0,0,alpha)`. Fixed overlays (`overlay-fixed-black-N`, `overlay-fixed-white-N`) do not flip. Opacity levels stay identical.

### Elevation in Dark Mode

Material 2 shadow values do not change between modes. The perceived effect is softer on dark surfaces because the surfaces are already close to black, which is fine.

## Do's and Don'ts

- Do consume reference tokens and component tokens. Never consume globals directly.
- Do use `primary` for filled CTAs. Use `entri-blue` for identity and switch tracks.
- Do use Display L and XL in their Light (300) regular weight for hero marketing. Use bold variants when a moment needs authority.
- Don't use italic variants. Regional Indian fonts render italics inconsistently.
- Do use `label-text` (8px ALL CAPS) only on tags. Never in a reading flow.
- Do pick Body vs Paragraph by line count. Single line is Body, multi-line is Paragraph.
- Don't mix radius families within a visual group.
- Do stay on the spacing scale. 10px, 14px, 22px are not EntriVerse values.
- Don't invent new color tokens. If a needed shade is missing, the system is the gap, not the component.
- Do pick elevation by Material 2 purpose. Card at Level 1, FAB at Level 6, dialog at Level 24.
- Don't drop heavy shadows on inline cards to add importance. Use `surface-secondary` or a border instead.
- Do use the overlay system for scrims and washes. Do not hand-write `rgba(0,0,0,0.5)`.
- Do target WCAG AA (4.5:1) for all text.
