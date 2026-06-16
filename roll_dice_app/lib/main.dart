// Imports Flutter's Material Design widgets and utilities
import 'package:flutter/material.dart';

// Imports the custom RollDice widget from your project
import 'package:roll_dice_app/roll_dice/roll_dice.dart';

// The main function is the entry point of every Dart application
void main() {
  // Starts the Flutter app and attaches the widget tree to the screen
  runApp(
    MaterialApp(
      // Defines the default route (home screen) of the application
      home: RollDice(),
    ),
  );
}
