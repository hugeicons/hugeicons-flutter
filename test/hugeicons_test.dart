import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hugeicons/hugeicons.dart';

void main() {
  group('HugeIcons', () {
    test('should have the expected IconData constants', () {
      expect(HugeIcons.strokeRoundedHome01, isA<IconData>());
      expect(HugeIcons.strokeRoundedHome02, isA<IconData>());
    });
  });

  group('HugeIcon', () {
    testWidgets('should display a hugeicons icon', (WidgetTester tester) async {
      const testKey = Key('hugeIconTest');

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: HugeIcon(
              key: testKey,
              icon: HugeIcons.strokeRoundedHome01,
              color: Colors.blue,
              size: 50.0,
            ),
          ),
        ),
      );

      final hugeIconFinder = find.byKey(testKey);
      expect(hugeIconFinder, findsOneWidget);

      final hugeIconWidget = tester.widget<HugeIcon>(hugeIconFinder);
      expect(hugeIconWidget.icon, equals(HugeIcons.strokeRoundedHome01));
      expect(hugeIconWidget.color, equals(Colors.blue));
      expect(hugeIconWidget.size, equals(50.0));

      // Verify the internal Icon widget
      final iconFinder = find.descendant(
        of: hugeIconFinder,
        matching: find.byType(Icon),
      );
      expect(iconFinder, findsOneWidget);

      final iconWidget = tester.widget<Icon>(iconFinder);
      expect(iconWidget.icon, equals(HugeIcons.strokeRoundedHome01));
      expect(iconWidget.color, equals(Colors.blue));
      expect(iconWidget.size, equals(50.0));
    });
  });
}
