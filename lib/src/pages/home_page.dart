import 'package:flutter/material.dart';
import '../widgets/dice_display.dart';
import '../utils/dice.dart';

/// Home page: contains app chrome and the dice UI.
///
/// The state holds the current dice value and triggers a roll when the
/// button is pressed.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 1;

  // Called when the user presses roll. Uses the small utility in `utils/dice.dart`.
  void _roll() {
    setState(() {
      _value = Dice.roll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A gradient background for a nicer look.
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6A1B9A), Color(0xFF8E24AA)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Fancy Dice Roller',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),

                // Dice card with animated number
                DiceDisplay(value: _value),
                const SizedBox(height: 18),

                // Styled roll button
                ElevatedButton.icon(
                  onPressed: _roll,
                  icon: const Icon(Icons.casino),
                  label: const Text('Roll Dice'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // Floating action button removed: rolls are triggered by the main
      // 'Roll Dice' button in the page content for a cleaner UI.
    );
  }
}
