import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

/// Displays the final quiz result along with
/// the correct answers and the user's answers.
class ResultScreen extends StatelessWidget {
  /// Stores the user's selected answers.
  /// Key = Question index
  /// Value = Selected answer
  final Map<int, String> questionData;

  /// Contains all quiz questions.
  final List<Map<String, dynamic>> questionSet;

  const ResultScreen({
    super.key,
    required this.questionData,
    required this.questionSet,
  });

  @override
  Widget build(BuildContext context) {
    // Stores the user's total score.
    int score = 0;

    // Calculate the total score by comparing
    // the user's answer with the correct answer.
    for (int i = 0; i < questionSet.length; i++) {
      final correctAnswer = questionSet[i]['options'][questionSet[i]['answer']];

      if (questionData[i] == correctAnswer) {
        score++;
      }
    }

    return Scaffold(
      // Sets the screen background color.
      backgroundColor: Colors.white,

      // App bar shown at the top of the screen.
      appBar: AppBar(title: const Text("Quiz Result"), centerTitle: true),

      body: Column(
        children: [
          const SizedBox(height: 20),

          // Displays the user's final score.
          TextSection(
            textInput: "You have scored $score out of ${questionSet.length}",
            textSize: 22,
          ),

          const SizedBox(height: 20),

          // Displays every question along with
          // the correct answer and user's answer.
          Expanded(
            child: ListView.builder(
              // Total number of questions.
              itemCount: questionSet.length,

              itemBuilder: (context, index) {
                // Current question.
                final question = questionSet[index];

                // Correct answer for the current question.
                final correctAnswer = question['options'][question['answer']];

                // User's selected answer.
                // If no answer was selected, display "Not Answered".
                final userAnswer = questionData[index] ?? "Not Answered";

                return Card(
                  margin: const EdgeInsets.all(10),

                  child: Padding(
                    padding: const EdgeInsets.all(12),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // Displays the question number and question text.
                        Text(
                          "Q${question['id']}. ${question['question']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Displays the correct answer.
                        Text(
                          "Correct Answer: $correctAnswer",
                          style: const TextStyle(color: Colors.green),
                        ),

                        const SizedBox(height: 4),

                        // Displays the user's selected answer.
                        Text(
                          "Your Answer: $userAnswer",
                          style: TextStyle(
                            color: userAnswer == correctAnswer
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
