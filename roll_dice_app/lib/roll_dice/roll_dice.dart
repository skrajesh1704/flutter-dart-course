import 'dart:math'; // Provides Random() for generating random numbers

import 'package:flutter/material.dart'; // Material Design widgets
import 'package:roll_dice_app/roll_dice/roll_button.dart'; // Custom button widget
import 'package:flutter_svg/flutter_svg.dart'; // SVG image support

// StatefulWidget because the dice value changes over time
class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

// State class that holds mutable data
class _RollDiceState extends State<RollDice> {
  // Stores the current dice face number (1-6)
  int currentDice = 2;

  // Function called when the button is pressed
  void rollDice() {
    setState(() {
      // Generate a random number from 1 to 6
      currentDice = Random().nextInt(6) + 1;
    });
    // setState tells Flutter to rebuild the UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Page background color
      backgroundColor: const Color.fromARGB(255, 213, 233, 142),

      body: Center(
        // Centers content on the screen
        child: Column(
          // Column takes only the space needed by its children
          mainAxisSize: MainAxisSize.min,

          children: [
            // Display the SVG image corresponding to currentDice
            // Example:
            // currentDice = 1 -> dice-1.svg
            // currentDice = 5 -> dice-5.svg
            SvgPicture.asset(
              'assets/images/dice-$currentDice.svg',
              height: 60,
            ),

            // Custom button widget
            // Passes rollDice function so the button can call it
            RollButton(
              diceRoll: rollDice,
            ),
          ],
        ),
      ),
    );
  }
}
