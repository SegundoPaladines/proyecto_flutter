import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String foto;
  final String nombre;
  final String detalles;
  final String comentario;
  final int stars;

  const Review(
      {super.key,
      required this.foto,
      required this.nombre,
      required this.detalles,
      required this.comentario,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        nombre,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
        ),
      ),
    );

    //estrella vacia
    final starBorder = Container(
      margin: const EdgeInsets.only(
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
        left: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userInfo = Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        child: Row(
          children: <Widget>[
            Text(
              detalles,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 13.0,
                fontFamily: "Lato",
                color: Color(0xFFa3a5a7),
              ),
            ),
            Row(children: <Widget>[star, star, star, starHalf, starBorder]),
          ],
        ));

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final pothoContainer = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(foto),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
        top:20,
      ),
      child: Row(
        children: <Widget>[
          pothoContainer,
          userDetails,
        ],
      ),
    );
  }
}
