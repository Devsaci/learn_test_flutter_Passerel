import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/home.dart';

void main() {
  const baseApp = MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: Home(),
    ),
  );

  testWidgets('Test set', (WidgetTester tester) async {
    //Créer un Widget en test
    //Construire
    await tester.pumpWidget(baseApp);

    //19. chercher un Widget par le texte
    final withText = find.text("Unit Testing");
    expect(withText, findsOneWidget);
    //20. Les différents types de recherche
    final withIcon = find.byIcon(Icons.add);
  });
}
