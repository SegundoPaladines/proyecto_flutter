import 'package:app_proy_1/components/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children:const <Widget> [
          CardImage(url: "assets/img/sunset.jpeg"),
          CardImage(url: "assets/img/river.jpeg"),
          CardImage(url: "assets/img/mountain.jpeg"),
           CardImage(url: "assets/img/mountain_stars.jpeg"),
          CardImage(url: "assets/img/beach.jpeg"),
          CardImage(url: "assets/img/beach_palm.jpeg"),
        ],
      ),
    );
  }
}
