//14. Créer une class de test
import 'package:flutter_test_passerel/item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

main() {
  test('Construction d\'un Objet Item', () {
    String name = "Test d'un Item";
    Item item = Item(name: name);
    expect(item.name, name);
  });
}
