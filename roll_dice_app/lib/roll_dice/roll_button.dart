import 'package:flutter/material.dart'; // Material Design widgets

// StatelessWidget because this button itself does not manage any state
class RollButton extends StatelessWidget {
  const RollButton({
    super.key,

    // Function passed from parent widget
    // This function will run when the button is pressed
    required this.diceRoll,
  });

  // Stores a reference to a function with:
  // - no parameters
  // - no return value
  final VoidCallback diceRoll;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // Called when the button is pressed
      // Executes the function received from the parent widget
      onPressed: diceRoll,

      // Styling for the button
      style: const ButtonStyle(
        // Adds a black border around the button
        side: WidgetStatePropertyAll(
          BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),

      // Text displayed inside the button
      child: const Text(
        'Click to Roll Dice',

        // Text styling
        style: TextStyle(
          color: Colors.red, // Text color
          fontSize: 18.0, // Text size
          fontWeight: FontWeight.w500, // Semi-bold text
        ),
      ),
    );
  }
}
