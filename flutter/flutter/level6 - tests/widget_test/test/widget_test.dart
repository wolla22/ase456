// https://docs.flutter.dev/cookbook/testing/widget/tap-drag

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_test/main.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to verify
    // that the Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);

    final textButton = find.byType(TextButton);
    expect(textButton, findsOneWidget);

    // There is no IconButton
    expect(find.byType(IconButton), findsNothing);

    // Tap the text button
    var text0 = find.text('0');

    expect(text0, findsOneWidget);
    await tester.tap(textButton);
    await tester.pump();
    var text1 = find.text('1');
    expect(text1, findsOneWidget);
  });
}
