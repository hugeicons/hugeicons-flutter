import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hugeicons/hugeicons.dart';

void main() {
  group('HugeIcons', () {
    test('should expose icon path data as List<List<dynamic>>', () {
      expect(HugeIcons.strokeRoundedHome01, isA<List<List<dynamic>>>());
      expect(HugeIcons.strokeRoundedHome02, isA<List<List<dynamic>>>());
    });
  });

  group('HugeIcon', () {
    testWidgets('should display a hugeicons icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedExternalDrive,
                color: Colors.blue,
                size: 50.0,
              ),
            ),
          ),
        ),
      );

      // Find the HugeIcon widget
      final hugeIconFinder = find.byType(HugeIcon);
      expect(hugeIconFinder, findsOneWidget);

      final hugeIconWidget = tester.widget<HugeIcon>(hugeIconFinder);
      expect(hugeIconWidget.icon, equals(HugeIcons.strokeRoundedExternalDrive));
      expect(hugeIconWidget.color, equals(Colors.blue));
      expect(hugeIconWidget.size, equals(50.0));

      // Verify the internal SvgPicture widget
      final iconFinder = find.descendant(
        of: hugeIconFinder,
        matching: find.byType(SvgPicture),
      );
      expect(iconFinder, findsOneWidget);

      final svgRenderBox = tester.renderObject<RenderBox>(iconFinder);
      expect(svgRenderBox.size.width, equals(50.0));
      expect(svgRenderBox.size.height, equals(50.0));
    });

    testWidgets(
        'should preserve requested size in InputDecoration prefixIcon slot',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TextField(
              decoration: InputDecoration(
                prefixIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedSearch02,
                  size: 16.0,
                ),
              ),
            ),
          ),
        ),
      );

      final svgFinder = find.descendant(
        of: find.byType(HugeIcon),
        matching: find.byType(SvgPicture),
      );
      expect(svgFinder, findsOneWidget);

      final RenderBox svgRenderBox = tester.renderObject<RenderBox>(svgFinder);
      expect(svgRenderBox.size.width, equals(16.0));
      expect(svgRenderBox.size.height, equals(16.0));
    });
  });
}
