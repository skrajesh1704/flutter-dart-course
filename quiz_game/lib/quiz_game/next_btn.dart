import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/dummy_quiz_data.dart';

class NextBtn extends StatefulWidget {
  final int currentQuestion;
  final ValueChanged<int> onQuestionChanged;

  const NextBtn({
    super.key,
    required this.currentQuestion,
    required this.onQuestionChanged,
  });

  @override
  State<NextBtn> createState() => _NextBtnState();
}

class _NextBtnState extends State<NextBtn> {
  void nextQuestion() {
    int nextIndex;

    if (widget.currentQuestion < questionData.length - 1) {
      nextIndex = widget.currentQuestion + 1;
    } else {
      nextIndex = 0;
    }

    widget.onQuestionChanged(nextIndex);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: nextQuestion, child: const Text('Next'));
  }
}
