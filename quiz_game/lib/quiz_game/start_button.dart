import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/question_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withAlpha(50), width: 1.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => QuestionScreen()),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
