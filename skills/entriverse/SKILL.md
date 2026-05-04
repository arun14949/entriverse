---
name: entriverse
description: EntriVerse design system spec for Entri (edtech platform serving 11+ regional Indian languages). Apply whenever building UI for Entri products: React components, SwiftUI views, Kotlin layouts, web pages, mockups, prototypes, or screens. Use this skill even when the user doesn't say "EntriVerse" explicitly, as long as the context involves Entri product UI. Covers all design tokens, component specifications, typography, color, spacing, elevation, and dark mode rules.
---

# EntriVerse Design System

This skill provides the EntriVerse design system specification for Entri, a multi-platform edtech product serving learners across 11+ regional Indian languages on web, Android, and iOS.

## When to use this skill

Use this skill when any of the following are true:

- The user is building, modifying, or styling UI for an Entri product (web, mobile web, Android, iOS).
- The user is generating React, SwiftUI, Kotlin, or HTML/CSS code that should match Entri's brand.
- The user mentions building a screen, component, layout, or mockup in an Entri context.
- The user asks to "make this match our design system" or similar in an Entri repo.
- The user references EntriVerse, Entri brand, or Entri design tokens.

If unsure whether the user means Entri specifically, default to using this skill when the project name, repo name, file paths, or surrounding context suggests Entri.

## How to use this skill

The full specification lives in `references/entriverse.md`. Read it before generating any UI code. The spec contains:

- Three layers of design tokens (global primitives, reference tokens, component tokens) with a cascading reference system.
- Full typography scale (Inter and Noto Serif, with Body vs Paragraph distinction).
- Spacing and corner radius scales.
- Material 2 elevation system.
- Component definitions for buttons, inputs, cards, radio, checkbox, switch, selection tiles, tabs, segmented buttons, navigation, progress, slider, snackbar, tooltip, and tags.
- Dark Mode override block (in the prose section, near the bottom).
- Overlay system documentation (mode-dependent and fixed black/white scrims).

After reading the spec, generate code that follows it.

## Cardinal rules (apply even before reading the full spec)

These rules apply universally and should override any conflicting instinct:

1. **Consume reference tokens or component tokens, never global primitives or hardcoded values.** Use `primary`, `text-subtext`, `error-container`, `button-filled` from the reference and component layers. Never use `blue-700`, `grey-90`, or `#0061B5` directly in product code, even if the value happens to match.

2. **Never invent token names or color values.** If a needed shade or component variant is missing from the spec, the spec is the gap. Tell the user rather than improvising.

3. **`primary` and `entri-blue` are different tokens with different jobs.** `primary` (`blue-700`) is for filled CTAs, active selection states, link text. `entri-blue` (`blue-500`) is the brand identity color, used for switch tracks, slider tracks, the input cursor. Never use `entri-blue` as a filled button background. It does not pass WCAG AA with white text.

4. **Body and Paragraph share the same sizes but differ in line height.** Body (`line-height: 1.2`) is for single-line UI: buttons, list items, labels, single-line card titles. Paragraph (`line-height: 1.5–1.6`) is for multi-line reading flows. Pick by whether the text wraps.

5. **`label-text` (8px ALL CAPS) is for tags only.** Never use it in body copy or reading content.

6. **Stay on the spacing scale.** 10px, 14px, 22px are not EntriVerse values. Use the named tokens (`m: 8px`, `xl: 16px`, `2xl: 24px`, etc.).

7. **Match radius to component family, do not mix within a visual group.** Buttons use `full` (200px). Cards use `m` (8px). Tags and inputs use `s` (4px). Tabs and app bars use `none`. A button inside a card is fine; two chips with different radii side by side is not.

8. **Pick elevation by Material 2 convention, not aesthetic.** Cards at Level 1, FABs and snackbars at Level 6, navigation drawers at Level 16, dialogs at Level 24. Do not stack heavy shadows on inline cards to add visual weight; use `surface-secondary` or a border instead.

9. **For dark mode, do not redefine components.** Dark mode is a reference-token override. Look at the Dark Mode section in `references/entriverse.md`, apply those token remappings, and the components inherit the new values automatically.

10. **Target WCAG AA (4.5:1) for all text.** The spec is built around this; if a custom combination is required, verify contrast.

## Examples of good vs bad output

**Good:** A user asks for a primary CTA button. Output uses `bg-primary text-on-primary rounded-full px-3 py-3 font-button` (or equivalent platform syntax) referencing the component-layer token shape.

**Bad:** Same request, output uses `bg-[#0061B5] text-white rounded-[200px] px-3 py-3 font-bold` with hardcoded hex and pixel values.

**Good:** A user asks for a destructive action button. Output uses `button-destructive` token shape (background `red-700`, text `on-error`).

**Bad:** Same request, output uses `bg-red-500 text-white` because `red-500` is the closest available Tailwind value. The spec defines `red-700` as the destructive container; do not substitute.

**Good:** A user asks for a tag that says "NEW". Output uses `tag-blue` component (background `blue-700`, text white, 12px caption-bold). Does NOT use 8px `label-text` typography in body copy elsewhere.

**Bad:** Output uses `label-text` (8px ALL CAPS) for body copy on a card because it "looks design-systemy".

## What this skill does not cover

- Implementation in any specific framework. The spec is platform-agnostic. Translate to whatever framework the user is working in (React with Tailwind, SwiftUI, Jetpack Compose, vanilla CSS, etc.).
- Animation and motion. Not yet specified in EntriVerse.
- Iconography. Use Entri's icon system separately.
- Localization-specific typography rules beyond the high level (Inter and Noto Serif both cover the 11 supported scripts).

If a user asks for any of the above, follow general best practices and note that the spec doesn't cover it explicitly.
