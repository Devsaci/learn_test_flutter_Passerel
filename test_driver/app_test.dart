import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
//Trouver nos éléments dans l'app
  final textFild = find.byValueKey("FirstTest");
  final button = find.byTooltip("Add Item");

  //Crée un Driver
  late FlutterDriver flutterDriver;

  // Mettre en place ce Driver
  setUpAll(() async {
    flutterDriver = await FlutterDriver.connect();
    await flutterDriver.waitUntilFirstFrameRasterized();
  });
  //Supprime à la fin du test
  tearDownAll(() async {
    flutterDriver.close();
  });

  //Commencer nos Tests;
//29. premier test
  test('Ajouter un Item à la liste', () async {
    //Obtienne le focus de la textField
    await flutterDriver.tap(textFild);

    //Entrer texte
    await flutterDriver.enterText('Salut');

    // Appui sur bouton pour ajouter Item;
    await flutterDriver.tap(button);

    //Rechercher la tile avec Salut dedans;
    final tile = find.text('Salut');

    //Attendre le résultat
    expect(await flutterDriver.getText(tile), 'Salut');
  });

  // TEST in Terminal : flutter driver --target=test_driver/app.dart

  test("Test du scroll de ma liste", () async {
    find.byValueKey("List");
  });
}
