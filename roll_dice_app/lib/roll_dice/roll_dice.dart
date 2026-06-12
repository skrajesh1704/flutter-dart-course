import 'package:flutter/material.dart';
import 'package:roll_dice_app/roll_dice/roll_button.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RollButton(),
          ],
        ),
      ),
    );
  }
}
