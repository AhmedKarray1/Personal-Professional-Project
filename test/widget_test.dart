import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ppp/main.dart';

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
    expect(find.text('What are the main building blocks of Flutter UIs?'), findsOneWidget);

    await tester.tap(find.byKey(const Key("0")));
    expect(find.text('How are Flutter UIs built?'), findsOneWidget);

    // await tester.tap(find.byKey(const Key("0")));

    // expect(find.text('You answered 1 out of 6 questions correctly!'), findsOneWidget);

    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));
    // await tester.tap(find.byType(ElevatedButton));

    // expect(find.text('Restart Quiz!'), findsOneWidget);
  });
}
