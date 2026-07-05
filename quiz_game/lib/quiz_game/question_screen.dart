import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/dummy_quiz_data.dart';
import 'package:quiz_game/quiz_game/next_btn.dart';
import 'package:quiz_game/quiz_game/result_screen.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

/// Screen that displays quiz questions one by one.
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

/// Manages the state of the quiz screen.
class _QuestionScreenState extends State<QuestionScreen> {
  /// Index of the currently displayed question.
  int currentQuestion = 0;

  /// Stores the currently selected answer.
  String? selectedAnswers;

  /// Stores all answers selected by the user.
  /// Key = Question index
  /// Value = Selected answer
  final Map<int, String> userAnswers = {};

  @override
  Widget build(BuildContext context) {
    // Get the current question from the quiz data.
    final questionSet = questionData[currentQuestion];

    return Scaffold(
      // Sets the screen background color.
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          // Centers all widgets vertically.
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Displays the current question.
            TextSection(
              textInput: questionSet['question'],
              textSize: 22.0,
              textWeight: FontWeight.w500,
            ),

            const SizedBox(height: 30),

            // Displays all answer options as radio buttons.
            RadioGroup<String>(
              // Currently selected option.
              groupValue: selectedAnswers,

              // Updates the selected option.
              onChanged: (value) {
                setState(() {
                  selectedAnswers = value;
                });
              },

              child: Column(
                children: questionSet['options'].map<Widget>((option) {
                  return Row(
                    children: [
                      // Radio button for each option.
                      Radio<String>(value: option),

                      // Displays the option text.
                      Expanded(child: TextSection(textInput: option)),
                    ],
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 30),

            // Button to move to the next question.
            NextBtn(
              currentQuestion: currentQuestion,

              onQuestionChanged: (newIndex) {
                // Save the selected answer before moving ahead.
                if (selectedAnswers != null) {
                  userAnswers[currentQuestion] = selectedAnswers!;
                }

                // Check if this is the last question.
                if (currentQuestion == questionData.length - 1) {
                  // Navigate to the result screen.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ResultScreen(questionData: userAnswers),
                    ),
                  );
                } else {
                  // Move to the next question.
                  setState(() {
                    currentQuestion = newIndex;

                    // Clear the previous selection.
                    selectedAnswers = null;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
