import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/counter_app.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter App Widget Testing', (WidgetTester tester) async {
    // Build our app and Trigger it
    await tester.pumpWidget(const MaterialApp(home: CounterApp()));

    //  Verify if the counter value is starting from 0 or not
    expect(find.text('0'),
        findsOneWidget); // Test case will be passed if only one control value is equal to 0

    expect(find.text('1'),
        findsNothing); // Test case will be passed if no controls are find with the initial value 1

    // Click to find if the counter value is increasing or not

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify if the counter value has been increased or not
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
