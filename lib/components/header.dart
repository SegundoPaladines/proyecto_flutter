import 'package:app_proy_1/components/card_image_list.dart';
import 'package:app_proy_1/components/gradient_back.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children:<Widget> [
        GradientBack(titulo: "Popular"),
        CardImageList(),
      ],
    );
  }
}
