import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String textInput;
  final double textSize;
  const TextSection({super.key, required this.textInput, this.textSize = 18.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      textInput,
      style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w600),
    );
  }
}
