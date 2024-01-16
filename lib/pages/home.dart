import 'package:app_proy_1/components/description_place.dart';
import 'package:app_proy_1/components/header.dart';
import 'package:app_proy_1/components/review_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: const <Widget>[
              DescriptionPlace(name: "Dwilly Hela", stars: 4),
              ReviewList(),
            ],
          ),
          const Header(),
        ],
      ),
    );
  }
}
