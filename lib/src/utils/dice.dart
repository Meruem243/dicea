import 'dart:math';

/// Simple dice utility. Keeps randomness encapsulated so other code stays small.
class Dice {
  static final Random _rng = Random();

  /// Returns a random value between 1 and 6 inclusive.
  static int roll() => _rng.nextInt(6) + 1;
}
