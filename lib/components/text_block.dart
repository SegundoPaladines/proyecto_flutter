import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String texto;
  const TextBlock({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Color(0xFF56575a),
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
