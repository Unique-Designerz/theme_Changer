import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.home,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.circle_outlined),
          ),
          const BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.person),
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: 1,
        iconSize: 25,
        showSelectedLabels: false,
      );
}
