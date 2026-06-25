import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String textInput;
  final double textSize;
  final FontWeight textWeight;
  const TextSection({
    super.key,
    required this.textInput,
    this.textSize = 18.0,
    this.textWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textInput,
      style: TextStyle(fontSize: textSize, fontWeight: textWeight),
    );
  }
}
