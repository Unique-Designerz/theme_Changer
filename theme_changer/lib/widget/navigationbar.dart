import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
              backgroundColor: Color.fromRGBO(240, 240, 240, 0.3)),
          const BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.search),
              backgroundColor: Colors.yellow),
          const BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.person),
          ),
        ],
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        showSelectedLabels: false,
      );
}
