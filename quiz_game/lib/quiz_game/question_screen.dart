import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/dummy_quiz_data.dart';
import 'package:quiz_game/quiz_game/next_btn.dart';
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
  // Stores the selected option for the current question
  String? selectedAnswers;
  // Stores all selected answers
  final Map<int, String> userAnswers = {};

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
            const SizedBox(height: 30.0),

            /// Dynamically generates a TextSection widget
            /// for each answer option in the current question.
            RadioGroup<String>(
              groupValue: selectedAnswers,
              onChanged: (value) {
                setState(() {
                  selectedAnswers = value;
                });
              },
              child: Column(
                children: questionSet['options'].map<Widget>((option) {
                  return Row(
                    children: [
                      Radio<String>(value: option),
                      Expanded(child: TextSection(textInput: option)),
                    ],
                  );
                }).toList(),
              ),
            ),

            /// Button to move to the next question.
            const SizedBox(height: 30.0),
            NextBtn(
              currentQuestion: currentQuestion,
              onQuestionChanged: (newIndex) {
                if (selectedAnswers != null) {
                  userAnswers[currentQuestion] = selectedAnswers!;
                }
                setState(() {
                  currentQuestion = newIndex;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
