import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/home.dart';
import 'package:flutter_test_passerel/main.dart';

void main() {
  const baseApp = MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: Home(),
    ),
  );

  testWidgets('Test set', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
