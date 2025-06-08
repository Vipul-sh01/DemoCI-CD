import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gitaction/main.dart'; // Change this to match your app import

void main() {
  testWidgets('Valid input enables button', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Find the TextField
    final textFieldFinder = find.byType(TextField);
    expect(textFieldFinder, findsOneWidget);

    // Enter a valid 10-digit number
    await tester.enterText(textFieldFinder, '1234567890');
    await tester.pumpAndSettle(); // Wait for GetX to update the state

    // Find the ElevatedButton
    final buttonFinder = find.byType(ElevatedButton);
    expect(buttonFinder, findsOneWidget);

    // Check that the button is enabled (onPressed is not null)
    final ElevatedButton buttonWidget = tester.widget(buttonFinder);
    expect(buttonWidget.onPressed != null, true);
  });
}
