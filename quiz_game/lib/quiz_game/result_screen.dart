import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

/// Displays the quiz result screen.
///
/// Shows:
/// - The user's score
/// - A simple header for the result table
/// - The correct answers (currently displaying the questionData map)
class ResultScreen extends StatelessWidget {
  /// Stores the question number and its corresponding answer.
  final Map<int, String> questionData;
  final Map<String, dynamic> questionSet;

  /// Constructor for the ResultScreen.
  const ResultScreen({
    required this.questionData,
    required this.questionSet,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the background color of the screen.
      backgroundColor: Colors.white,

      body: Column(
        // Centers all widgets vertically.
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Displays the user's score.
          // Replace X and Y with actual values.
          TextSection(textInput: 'You have scored X out of Y questions'),

          // Header row for the result summary.
          Row(
            children: [
              // Serial number column.
              TextSection(textInput: questionSet['id'].toString()),

              // Question column.
              TextSection(textInput: questionSet['question'].toString()),
            ],
          ),

          // Displays the heading for correct answers.
          TextSection(textInput: 'Correct answer'),

          // Displays the questionData map.
          // You can later replace this with a ListView or
          // dynamically generated widgets for better formatting.
          TextSection(textInput: questionData.toString()),
        ],
      ),
    );
  }
}
