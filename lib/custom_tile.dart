// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'item.dart';

class CustomTile extends StatelessWidget {
  Item item;
  int index;
  final Function(int) update;
  final Function(int) dismiss;

  CustomTile({
    Key? key,
    required this.item,
    required this.index,
    required this.update,
    required this.dismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        dismiss(index);
      },
      child: ListTile(
        title: Text(item.name, style: style()),
        leading: Text((index + 1).toString(), style: style()),
        trailing: IconButton(
            onPressed: () {
              update(index);
            },
            icon: Icon(item.setIcon())),
      ),
      background: Container(
        color: Colors.deepOrangeAccent,
        padding: const EdgeInsets.all(10),
        child: const Text("Supprimer",
            style: TextStyle(color: Colors.white), textAlign: TextAlign.end),
      ),
    );
  }

  TextStyle style() {
    return TextStyle(
      color: item.setColor(),
      fontSize: 17,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    );
  }
}
