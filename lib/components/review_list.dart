import 'package:app_proy_1/components/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});
  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: const EdgeInsets.only(
        top:20,
        left: 20,
      ),
      child: const Text(
        "All Reviews",
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
          color: Color(0xFF56575a),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title,
          const Review(foto: "assets/img/yo.png", nombre: "Segundo Paladines", detalles: "1 review 5 photos", comentario: "Ok, esta decente", stars: 3),
          const Review(foto: "assets/img/yo.png", nombre: "Segundo Paladines", detalles: "1 review 5 photos", comentario: "Ok, esta decente", stars: 3),
          const Review(foto: "assets/img/yo.png", nombre: "Segundo Paladines", detalles: "1 review 5 photos", comentario: "Ok, esta decente", stars: 3),
        ],
      ),
    );
  }
}
