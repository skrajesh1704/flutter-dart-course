import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Text('Hello, How are you...     ?'),
          Text('Answer 1: Fine'),
          Text('Answer 2: Doing Good'),
          Text('Answer 3: Great'),
          Text('Answer 4: All of the above'),
        ],
      ),
    );
  }
}
