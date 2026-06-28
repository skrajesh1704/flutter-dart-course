import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/dummy_quiz_data.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

/// Screen that displays a quiz question and its answer options.
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

/// State class that manages the current quiz question.
class _QuestionScreenState extends State<QuestionScreen> {
  /// Stores the index of the currently displayed question.
  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    /// Retrieves the current question from the quiz data.
    final questionSet = questionData[currentQuestion];

    return Scaffold(
      /// Sets the screen background color.
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          /// Centers all widgets vertically.
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            /// Displays the current question.
            TextSection(
              textInput: questionSet['question'],
              textSize: 22.0,
              textWeight: FontWeight.w500,
            ),

            /// Dynamically generates a TextSection widget
            /// for each answer option in the current question.
            ...List.generate(questionSet['options'].length, (index) {
              return TextSection(textInput: questionSet['options'][index]);
            }),

            /// Button to move to the next question.
            ElevatedButton(
              onPressed: () {
                /// Checks if there are more questions remaining.
                if (currentQuestion < questionData.length - 1) {
                  setState(() {
                    /// Moves to the next question.
                    currentQuestion++;
                  });
                } else {
                  setState(() {
                    /// Restarts the quiz after the last question.
                    currentQuestion = 0;
                  });
                }
              },
              child: const Text('Next'),
            ),

            // Example static answer widgets (not used because
            // answers are generated dynamically above).

            // TextSection(textInput: 'Answer 1: Fine'),
            // TextSection(textInput: 'Answer 2: Doing Good'),
            // TextSection(textInput: 'Answer 3: Great'),
            // TextSection(textInput: 'Answer 4: All of the above'),
          ],
        ),
      ),
    );
  }
}
