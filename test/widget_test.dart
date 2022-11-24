import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/custom_tile.dart';
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
    // final withText = find.text("Unit Testing");
    // expect(withText, findsOneWidget);
    // expect(withText, findsNWidgets(1));
    //20. Les différents types de recherche
    //Recherche icone
    // final withIcon = find.byIcon(Icons.add);
    // expect(withIcon, findsOneWidget);
    //Recherche class
    // final typeCustomAppBar = find.byType(CustomAppBar);
    // expect(typeCustomAppBar, findsOneWidget);
    // final typeAppBar = find.byType(AppBar);
    // expect(typeAppBar, findsOneWidget);
    // final typeAppBar = find.byType(AppBar);
    // expect(typeAppBar, findsNothing);
    //Recherche Key
    // final byKeyTextField = find.byKey(const Key('TextField'));
    // expect(byKeyTextField, findsOneWidget);
    // final byKey = find.byKey(const Key('TestKey'));
    // expect(byKey, findsNothing);
  });

//21. Tester un texte entier
  testWidgets('Test du texte écrit', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);

    // final textField = find.byType(TextField);
    //expect(textField, findsOneWidget);
    // expect(textField, findsNWidgets(1));

    // Entrer du Texte
    // await tester.enterText(textField, "Salut les codeurs");
    // Error (textField,)
    await tester.enterText(find.byType(TextField), "toto");
    expect(find.text("toto"), findsOneWidget);
  });

//22. Tester un tap de bouton
  testWidgets('test du Tap', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);
    final tf = find.byType(TextField);
    await tester.enterText(tf, "Salut");
    final btn = find.byIcon(Icons.add);
    //Tap
    await tester.tap(btn);
    await tester.pump();
    final tiles = find.byType(CustomTile);
    expect(tiles, findsNWidgets(4));
    final last = find.text("Salut");
    expect(last, findsOneWidget);
  });

  //23. Tester un Swipe (ou drag)
  testWidgets('Test du Dismiss', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);
    final tile = find.text("Unit Testing");
    expect(tile, findsOneWidget);
  });
}
