import 'package:flutter/material.dart';
import 'package:flutter_test_passerel/custom_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Apprendre les tests"),
            TextField(
              controller: controller,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
              ),
            ),
            SizedBox(
                height: 400,
                width: 200,
                child: Image.asset('images/androiddummy.png'))
          ],
        ),
      ),
    );
  }
}
