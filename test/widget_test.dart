// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flame/game.dart';
import 'package:squares/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    //await tester.pumpWidget(ComponentExample001());
    await tester.pumpWidget(GameWidget<ComponentExample001>(
      game: ComponentExample001(),
    ));

    // Verify that our counter starts at 0.
    //expect(find.text('0'), findsOneWidget);
    //expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
  // await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame using GameWidget.
//     await tester.pumpWidget(GameWidget<ComponentExample001>(
//       game: ComponentExample001(),
//     ));

//     // 以下のテストコードは、ComponentExample001 の具体的な動作に応じて適宜修正が必要です。

//     // Verify initial conditions or interactions here

//     // Example of triggering a frame and interaction
//     await tester.pumpAndSettle();
//     // Perform interactions like taps or entering text
//     // await tester.tap(find.byType(YourInteractiveWidgetType));
//     // await tester.enterText(find.byType(YourTextFieldWidgetType), 'Some text');

//     // Verify the results of the interactions
//     // expect(find.text('Expected Text'), findsOneWidget);
//   });
// }