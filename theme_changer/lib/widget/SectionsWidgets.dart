import 'package:flutter/material.dart';

import 'ListViewWidgets.dart';

class SectionsWidgets extends StatelessWidget {
  final String text;
  final String path1;
  final String path2;
  final String path3;
  final String path4;

  const SectionsWidgets(
      {super.key,
      required this.text,
      required this.path1,
      required this.path2,
      required this.path3,
      required this.path4});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(text),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        Container(
          height: 222,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListViewWidgets(
                path: path1,
              ),
              ListViewWidgets(
                path: path2,
              ),
              ListViewWidgets(
                path: path3,
              ),
              ListViewWidgets(
                path: path4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
