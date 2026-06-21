import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset('assets/images/quiz_game.jpg'),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text('Start Quiz'),
                Icon(Icons.arrow_forward_ios_rounded, size: 15.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
