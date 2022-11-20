//14. Créer une class de test

import 'package:flutter/material.dart';
import 'package:flutter_test_passerel/item.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  String name = "Test d'un Item";

  Item newItem() => Item(name: name);

  test('Construction d\'un Objet Item', () {
    Item item = newItem();
    expect(item.name, name);
    expect(item.isChecked, false);
  });

  test('Test du changement de check', () {
    Item item = newItem();
    item.updateCheck();
    expect(item.isChecked, true);
  });

  test('Test couleur', () {
    Item item = newItem();
    expect(item.setColor(), Colors.deepOrange);

    item.updateCheck();
    expect(item.setColor(), Colors.green);
  });

  test('Test Icon', () {
    Item item = newItem();
    expect(item.setIcon(), Icons.check_box_outline_blank);

    item.updateCheck();
    expect(item.setIcon(), Icons.check_box);
  });
}
