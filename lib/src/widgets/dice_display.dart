import 'package:flutter/material.dart';

/// A small widget that shows the dice value inside a decorated card.
///
/// Uses `AnimatedSwitcher` so when the value changes it animates smoothly.
class DiceDisplay extends StatelessWidget {
  final int value;
  const DiceDisplay({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'You rolled',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 8),

            // AnimatedSwitcher switches between old and new value with animation.
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              transitionBuilder: (child, animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$value',
                // The ValueKey ensures AnimatedSwitcher can distinguish values.
                key: ValueKey<int>(value),
                style: const TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
