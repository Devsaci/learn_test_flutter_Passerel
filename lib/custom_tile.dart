import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class CustomTile extends StatelessWidget {
  Item item;
  int index;

  CustomTile({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: ListTile(
        title: Text(
          item.name,
          style: style(),
        ),
        leading: Text(
          (index + 1).toString(),
          style: style(),
        ),
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
