import 'package:flutter/material.dart';
import 'package:flutter_test_passerel/custom_app_bar.dart';

import 'item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController controller;
  List<Item> items = [
    Item(name: "Unit Testing"),
    Item(name: "Widget Testing"),
    Item(name: "Integration testing")
  ];

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          const Text("Apprendre les tests"),
          const SizedBox(height: 50,),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                hintText: "Entrez un élément à ajouter"),
          ),
        ],
      ),
    );
  }
}
