import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key})
      : super(
            key: key,
            title: const Text("Apprendre les tests"),
            leading: Image.asset('images/androiddummy.png'),
            actions: [
              const Icon(Icons.connected_tv_sharp),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.add_alert),
            ]);
}
