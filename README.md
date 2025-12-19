# dicea

A simple, educational Flutter dice roller app.

## Overview

`dicea` is a small Flutter project that demonstrates building a cross-platform
UI, splitting code into multiple files for readability, and adding simple
animations. Press the **Roll Dice** button to generate a random number between
1 and 6.

## Features

- Tap the **Roll Dice** button to roll a six-sided die.
- Animated number transition when the value changes.
- Clean file structure with UI, widgets and utilities separated.
- Works on mobile, web, and desktop platforms supported by Flutter.

## Project layout

- `lib/main.dart` – app entrypoint (keeps main small)
- `lib/src/app.dart` – `MyApp` (theme and top-level config)
- `lib/src/pages/home_page.dart` – main UI, gradient background and roll button
- `lib/src/widgets/dice_display.dart` – card widget with animated number
- `lib/src/utils/dice.dart` – dice rolling utility (random number generation)


## How the app works (short)

- The UI is split into small, focused files to improve readability and
	maintainability.
- `Dice.roll()` (in `lib/src/utils/dice.dart`) returns a random integer 1–6.
- The `HomePage` state holds the current value and calls `setState()` when the
	user presses the roll button; `DiceDisplay` uses `AnimatedSwitcher` to animate
	the number change.

## What I learned while building this app

- File organization: splitting code into `pages`, `widgets`, and `utils`
	makes the project easier to navigate and reason about.
- Flutter basics: widget tree, `StatelessWidget` vs `StatefulWidget`, and the
	`setState()` lifecycle.
- Simple animations: `AnimatedSwitcher` provides smooth transitions with
	minimal code.
- Theming: using `ThemeData.from` and `ColorScheme.fromSeed` gives consistent
	colors across the app.
- Small utilities: isolating randomness in `Dice.roll()` makes testing and
	reuse simpler.
- Iterative UI improvements: hot reload speeds up design tweaks (gradients,
	card elevation, button styles).

## Next ideas (optional enhancements)

- Show dice face images instead of a numeric value.
- Add an animated rolling sequence (rapidly change numbers before settling).
- Persist last rolled value locally.
- Add unit/widget tests for the UI and dice logic.

