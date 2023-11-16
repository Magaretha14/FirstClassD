import 'package:first_class_d/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test_plus_button_increase_score', (WidgetTester tester) async {
    final homePage = HomePage();
    runApp(MaterialApp(home: homePage));

    await tester.pump();

    // Assert
    expect(homePage.scoreA, 1);
    expect(homePage.scoreB, 1);
    expect(homePage.scoreC, 1);
  });

  testWidgets('test_score_not_exceed_maximum_limit',
      (WidgetTester tester) async {
    final homePage = HomePage();
    runApp(MaterialApp(home: homePage));

    await tester.pump();

    for (int i = 0; i < 100000; i++) {
      await tester.pump();
    }
  });
}
