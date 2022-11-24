import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
//Trouver nos éléments dans l'app
  find.byValueKey("FirstTest");
  find.byTooltip("message");

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
}
