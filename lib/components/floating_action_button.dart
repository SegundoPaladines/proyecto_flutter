import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>
  with AutomaticKeepAliveClientMixin {
  
  IconData icon = Icons.favorite_border;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    icon = Icons.favorite_border;
  }

  void onPresesButton() {
    setState(() {
      if (icon == Icons.favorite_border) {
        icon = Icons.favorite;
      } else {
        icon = Icons.favorite_border;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPresesButton,
      child: Icon(icon),
    );
  }
}
