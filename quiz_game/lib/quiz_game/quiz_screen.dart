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
      body: Column(children: [Image.asset('assets/images/quiz_game.jpg')]),
    );
  }
}
