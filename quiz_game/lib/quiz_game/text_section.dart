import 'package:flutter/material.dart';

/// A reusable text widget for displaying questions and answers
class TextSection extends StatelessWidget {
  // Text to be displayed
  final String textInput;

  // Font size of the text
  final double textSize;

  // Font weight of the text
  final FontWeight textWeight;

  const TextSection({
    super.key,
    required this.textInput,

    // Default font size
    this.textSize = 18.0,

    // Default font weight
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
