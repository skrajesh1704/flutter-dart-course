import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String textInput;
  const TextSection({super.key, required this.textInput});

  @override
  Widget build(BuildContext context) {
    return Text(textInput);
  }
}
