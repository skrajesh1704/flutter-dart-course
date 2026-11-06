import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/question_screen.dart';

class RestartBtn extends StatelessWidget {
  const RestartBtn({super.key, required this.userAnswer});

  final Map<int, String> userAnswer;

  void resetScreen(BuildContext context) {
    userAnswer.clear();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const QuestionScreen()),
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withAlpha(50), width: 1.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        onPressed: () => resetScreen(context),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.restart_alt_rounded, color: Colors.redAccent),
            SizedBox(width: 5.0),
            Text('Restart', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

