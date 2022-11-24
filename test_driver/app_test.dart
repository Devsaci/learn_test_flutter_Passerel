import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  //Crée un Driver
  late FlutterDriver flutterDriver;

  // Mettre en place ce Driver
  setUpAll(() async {
    flutterDriver = await FlutterDriver.connect();
    await flutterDriver.waitUntilFirstFrameRasterized();
  });
  //Supprime à la fin du test
  tearDownAll(() async {});
}
