import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game/start_button.dart';

/// Main quiz screen widget
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

/// State class for QuizScreen
class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the screen background color
      backgroundColor: Colors.white,

      // Main content of the screen
      body: Column(
        // Centers children horizontally
        crossAxisAlignment: CrossAxisAlignment.center,

        // Centers children vertically
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Displays the quiz image from assets
          Image.asset('assets/images/quiz_game.jpg'),

          // Custom button widget to start the quiz
          StartButton(),
        ],
      ),
    );
  }
}
