import 'package:app_proy_1/pages/home.dart';
import 'package:app_proy_1/pages/profile.dart';
import 'package:app_proy_1/pages/search.dart';
import 'package:flutter/material.dart';

class AppTrips extends StatefulWidget {
  const AppTrips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppTrips();
  }
}

class _AppTrips extends State<AppTrips> {
  int indexTab = 0;
  final List<Widget> wigetsChildren = [
    const Home(),
    const Search(),
    const Profile()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wigetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTab,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
              ),
            ]),
      ),
    );
  }
}
