import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_game/main.dart' as app;
import 'package:quiz_game/quiz_game/restart_btn.dart';

void main() {
  testWidgets('Quiz app smoke test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
  });

  testWidgets('RestartBtn clears userAnswer and navigates', (WidgetTester tester) async {
    final Map<int, String> answers = {0: 'Paris', 1: 'Mars'};

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RestartBtn(userAnswer: answers),
        ),
      ),
    );

    expect(find.text('Restart'), findsOneWidget);
    await tester.tap(find.text('Restart'));
    await tester.pumpAndSettle();

    expect(answers.isEmpty, isTrue);
  });
}
