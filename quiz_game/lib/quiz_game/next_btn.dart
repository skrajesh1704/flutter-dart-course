import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/dummy_quiz_data.dart';

class NextBtn extends StatefulWidget {
  // Index of the currently displayed question.
  final int currentQuestion;

  // Callback to notify the parent widget when the question changes.
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
  // Moves to the next question.
  void nextQuestion() {
    int nextIndex;

    // If there are more questions, move to the next one.
    if (widget.currentQuestion < questionData.length - 1) {
      nextIndex = widget.currentQuestion + 1;
    } else {
      // If the last question is reached, start again from the first question.
      nextIndex = 0;
    }

    // Send the updated question index back to the parent widget.
    widget.onQuestionChanged(nextIndex);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Called when the button is pressed.
      onPressed: nextQuestion,

      // Styles the button.
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        side: BorderSide(
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Colors.grey,
        ),
      ),

      // Text displayed on the button.
      child: const Text(
        'Next',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
