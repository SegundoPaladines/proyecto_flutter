import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String name;
  final int stars;
  const DescriptionPlace({super.key, required this.name, required this.stars});
  @override
  Widget build(BuildContext context) {
    //estrella vacia
    final starBorder = Container(
       margin: const EdgeInsets.only(
        top: 323.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    //estrella a la mitad
    final starHalf = Container(
       margin: const EdgeInsets.only(
        top: 323.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    //estrella completa
    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        left: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 30,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, starHalf, starBorder],
        )
      ],
    );

    return titleStars;
  }
}
