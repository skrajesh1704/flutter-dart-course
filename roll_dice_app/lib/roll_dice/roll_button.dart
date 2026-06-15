import 'package:flutter/material.dart';

class RollButton extends StatelessWidget {
  const RollButton({
    super.key,
    required this.diceRoll,
  });

  final VoidCallback diceRoll;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: diceRoll,
      style: const ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      child: const Text(
        'Click to Roll Dice',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
