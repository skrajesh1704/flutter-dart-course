import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/text_section.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextSection(
              textInput: 'Hello, How are you...     ?',
              textSize: 22.0,
            ),
            TextSection(textInput: 'Answer 1: Fine'),
            TextSection(textInput: 'Answer 2: Doing Good'),
            TextSection(textInput: 'Answer 3: Great'),
            TextSection(textInput: 'Answer 4: All of the above'),
          ],
        ),
      ),
    );
  }
}
