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
    flutterDriver.enterText('Salut');
  });
}
