import 'package:flutter/material.dart';
import 'package:flutter_test_passerel/custom_app_bar.dart';
import 'package:flutter_test_passerel/custom_tile.dart';

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
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Apprendre les tests  Flutter"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              key: const Key("FirstTest"),
              controller: controller,
              decoration: const InputDecoration(
                  hintText: "Entrez un élément à ajouter"),
            ),
          ),
          const SizedBox(height: 50),
          Flexible(
            child: ListView.builder(
              key: const Key("List"),
              itemBuilder: (BuildContext context, int index) {
                // const Key key = Key("TestKey");
                const Key("TestKey");

                return CustomTile(
                  item: items[index],
                  index: index,
                  update: update,
                  dismiss: dismiss,
                );
              },
              itemCount: items.length,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add();
        },
        tooltip: "Add Item",
        child: const Icon(Icons.add),
      ),
    );
  }

  void add() {
    if (controller.text != "") {
      setState(() {
        final item = Item(name: controller.text);
        controller.text = "";
        items.add(item);
      });
    }
  }

  dismiss(index) {
    setState(() {
      items.removeAt(index);
    });
  }

  update(index) {
    setState(() {
      items[index].updateCheck();
    });
  }
}
