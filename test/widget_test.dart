import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/home.dart';

void main() {
  testWidgets('Test set', (WidgetTester tester) async {
    tester.pumpWidget(const Home());
  });
}
