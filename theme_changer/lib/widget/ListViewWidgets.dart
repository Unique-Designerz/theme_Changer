import 'package:flutter/material.dart';

class ListViewWidgets extends StatelessWidget {
  final String path;
  const ListViewWidgets({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: InkWell(
        child: Container(
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
