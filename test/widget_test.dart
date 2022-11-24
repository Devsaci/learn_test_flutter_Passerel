import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_passerel/custom_tile.dart';
import 'package:flutter_test_passerel/home.dart';

void main() {
  const baseApp = MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        home: Home(),
      ));

  testWidgets('Test set', (WidgetTester tester) async {
    //Créer un Widget en test
    //Construire
    await tester.pumpWidget(baseApp);
    //Recherche texte
    final withText = find.text("Unit Testing");
    expect(withText, findsOneWidget);
    //Recherche icone
    final withIcon = find.byIcon(Icons.add);
    expect(withIcon, findsOneWidget);
    //Recherche class
    final type = find.byType(AppBar);
    expect(type, findsNothing);
    //Recherche Key
    final byKey = find.byKey(const Key('TestKey'));
    expect(byKey, findsNWidgets(3));
  });

  testWidgets('Test du texte écrit', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);
    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    //Entrer du texte
    await tester.enterText(textField, "Salut les codeurs");
    expect(find.text("Salut les codeurs"), findsOneWidget);
  });

  testWidgets('Test du tap', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);
    final tf = find.byType(TextField);
    await tester.enterText(tf, "Salut");
    final btn = find.byIcon(Icons.add);
    //Tap
    await tester.tap(btn);
    //Attente du SetState
    await tester.pump();
    final tiles = find.byType(CustomTile);
    expect(tiles, findsNWidgets(4));
    final last = find.text("Salut");
    expect(last, findsOneWidget);
  });

  testWidgets('Test du Dismiss', (WidgetTester tester) async {
    await tester.pumpWidget(baseApp);
    final tile = find.text("Unit Testing");
    expect(tile, findsOneWidget);
    Offset offset = const Offset(-500, 0);
    //Swipe
    await tester.drag(tile, offset);
    //Attente du setState et de l'animation
    await tester.pumpAndSettle();
    final tiles = find.byType(CustomTile);
    expect(tiles, findsNWidgets(2));
  });
}





















// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:flutter_test_passerel/main.dart';

//void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }


