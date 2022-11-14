// 12. UI Partie 2
import 'package:flutter/material.dart';

class Item {
  String name;
  bool isChecked = false;

  Item({required this.name});

  updateCheck() {
    isChecked = !isChecked;
  }

  Color setColor() => (isChecked) ? Colors.green : Colors.deepOrange;
}
