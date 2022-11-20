import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/home.dart';

void main() {
  const MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: Home(),
    ),
  );

  testWidgets('Test set', (WidgetTester tester) async {
    tester.pumpWidget(const Home());
  });
}
