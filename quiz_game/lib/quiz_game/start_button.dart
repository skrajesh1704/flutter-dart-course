import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/question_screen.dart';

/// A custom button widget that starts the quiz
class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adds a border and rounded corners around the button
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withAlpha(50), width: 1.5),
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: TextButton(
        // Navigates to the QuestionScreen when pressed
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => QuestionScreen()),
          );
        },

        child: Row(
          // Makes the row take only the space needed by its children
          mainAxisSize: MainAxisSize.min,

          children: [
            // Button label
            Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            // Space between text and icon
            SizedBox(width: 10.0),

            // Forward arrow icon
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
