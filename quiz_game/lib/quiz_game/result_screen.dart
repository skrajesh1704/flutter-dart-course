import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

class ResultScreen extends StatelessWidget {
  final Map<int, String> questionData;
  const ResultScreen({required this.questionData, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextSection(textInput: 'You have scored X out of Y questions'),
          Row(
            children: [
              TextSection(textInput: 'Sl.'),
              TextSection(textInput: 'Question'),
            ],
          ),
          TextSection(textInput: 'Correct answer'),
          TextSection(textInput: 'User Answer'),
        ],
      ),
    );
  }
}
