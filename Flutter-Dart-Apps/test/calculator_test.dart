import 'package:flutter_application_1/service/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    print('All Initialization States for Groups can be Added here');
  });

  tearDownAll(() {
    print('All Cleanup Tasks for Groups can be added here');
  });

  group('Testing the Calculator Services', () {
    test('Testing Add Method', () {
      // Step 1: Create the instance foe the class
      var calc = calculator();

      // Step 2: What Exactly we want to Text
      int result = calc.add(10, 20);

      // Step 3: Whta are we going to expect from the test

      expect(result, 30);
    });

    test('Testing Multiply Method', () {
      // Step 1: Create the instance foe the class
      var calc = calculator();

      // Step 2: What Exactly we want to Text
      int result = calc.mul(10, 20);

      // Step 3: Whta are we going to expect from the test

      expect(result, 200);
    });
  });
}
