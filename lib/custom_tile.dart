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
    return  ListTile(
      title: Text(item.name, style: style(),),
    );
  }

   style() {}
}
