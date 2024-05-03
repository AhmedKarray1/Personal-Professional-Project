import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ppp/main.dart';

void main() {
  Future<void> onTap(WidgetTester tester) async {
    await tester.tap(find.byType(ElevatedButton).first);
    await tester.pump();
  }

  testWidgets('navigate to questions screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_right_alt));
    await tester.pump();
    expect(find.text('Learn Flutter the fun way!'), findsNothing);
    expect(
      find.byKey(const Key("questions-column")),
      findsOneWidget,
    );
    await onTap(tester);
    await onTap(tester);
    await onTap(tester);
    await onTap(tester);
    await onTap(tester);
    await onTap(tester);
    expect(
      find.byKey(const Key("restart-quiz-button")),
      findsOneWidget,
    );
  });
}
