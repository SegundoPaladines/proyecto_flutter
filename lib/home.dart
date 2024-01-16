import 'package:app_proy_1/description_place.dart';
import 'package:app_proy_1/text_block.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("Proy 1"),
        centerTitle: true,
      ),
      body: const Column(
        children: <Widget>[
          DescriptionPlace(name: "Dwilly Hela"),
          TextBlock(texto: "Irure laboris ullamco tempor ipsum amet eiusmod est amet aliquip do non. Ullamco veniam reprehenderit qui consequat exercitation nostrud labore cillum. Lorem laborum ipsum incididunt laboris proident aliquip incididunt irure quis aliqua cillum."),
          TextBlock(texto: "Laboris deserunt aute aute commodo voluptate. Elit dolore officia commodo veniam officia mollit Lorem aliqua. Deserunt minim proident ea exercitation irure proident ea et id excepteur quis magna.")
        ],
      ),
    );
  }
}
