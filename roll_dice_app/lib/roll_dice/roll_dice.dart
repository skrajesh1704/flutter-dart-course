import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/roll_dice/roll_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int currentDice = 2;
  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Dice image
            SvgPicture.asset(
              'assets/images/dice-$currentDice.svg',
              height: 60,
            ),
            // Button for flipping dice
            RollButton(
              diceRoll: rollDice,
            ),
          ],
        ),
      ),
    );
  }
}
