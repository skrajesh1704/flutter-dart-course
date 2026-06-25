import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

/// Screen that displays a quiz question and its answer options
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

/// State class for QuestionScreen
class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the background color of the screen
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          // Centers all widgets vertically
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Displays the quiz question
            TextSection(
              textInput: 'Hello, How are you...     ?',
              textSize: 22.0,
              textWeight: FontWeight.w500,
            ),

            // Answer option 1
            TextSection(textInput: 'Answer 1: Fine'),

            // Answer option 2
            TextSection(textInput: 'Answer 2: Doing Good'),

            // Answer option 3
            TextSection(textInput: 'Answer 3: Great'),

            // Answer option 4
            TextSection(textInput: 'Answer 4: All of the above'),
          ],
        ),
      ),
    );
  }
}
