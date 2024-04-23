import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ppp/answer_button.dart';
import 'package:ppp/main.dart';
import 'package:ppp/results_screen.dart';

void main() {
  testWidgets('navigate to questions screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_right_alt));
    await tester.pump();
    expect(find.text('Learn Flutter the fun way!'), findsNothing);
    expect(
      find.byType(Column),
      findsOneWidget,
    );

    await tester.tap(find.byWidget(AnswerButton("answerText", () {})));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));

    // expect(find.text('Restart Quiz!'), findsOneWidget);
  });
}
