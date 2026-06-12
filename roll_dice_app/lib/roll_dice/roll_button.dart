import 'package:flutter/material.dart';

class RollButton extends StatelessWidget {
  const RollButton({super.key});

  @override
  Widget build(context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      child: const Text(
        'Click Me',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
