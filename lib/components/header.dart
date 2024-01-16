import 'package:app_proy_1/components/card_image_list.dart';
import 'package:app_proy_1/components/gradient_back.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(titulo: title),
        const CardImageList(),
      ],
    );
  }
}
