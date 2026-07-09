import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

class ResultScreen extends StatelessWidget {
  final Map<int, String> questionData;
  final List<Map<String, dynamic>> questionSet;

  const ResultScreen({
    super.key,
    required this.questionData,
    required this.questionSet,
  });

  @override
  Widget build(BuildContext context) {
    int score = 0;

    for (int i = 0; i < questionSet.length; i++) {
      final correctAnswer = questionSet[i]['options'][questionSet[i]['answer']];

      if (questionData[i] == correctAnswer) {
        score++;
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Quiz Result"), centerTitle: true),
      body: Column(
        children: [
          const SizedBox(height: 20),

          TextSection(
            textInput: "You have scored $score out of ${questionSet.length}",
            textSize: 22,
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              itemCount: questionSet.length,
              itemBuilder: (context, index) {
                final question = questionSet[index];

                final correctAnswer = question['options'][question['answer']];

                final userAnswer = questionData[index] ?? "Not Answered";

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Q${question['id']}. ${question['question']}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 8),

                        Text("Correct Answer: $correctAnswer"),

                        Text("Your Answer: $userAnswer"),
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
