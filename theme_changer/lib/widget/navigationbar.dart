import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
              backgroundColor: Color.fromRGBO(240, 240, 240, 0.3)),
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.search),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.person),
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        showSelectedLabels: false,
      );
}
