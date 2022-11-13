import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key})
      : super(
          key: key,
          title: const Text("Apprendre les tests"),
          leading: const Icon(Icons.flutter_dash_rounded,size: 50,),
    actions: [
      Icon(Icons.connected_tv_sharp),
      SizedBox(width: 10,),
      Icon(Icons.add_alert),
    ]
        );
}
