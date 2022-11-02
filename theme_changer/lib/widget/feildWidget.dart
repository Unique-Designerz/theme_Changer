import 'package:flutter/material.dart';

class FormFildWidget extends StatelessWidget {
  const FormFildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDEDEDE))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(08),
          ),
          labelText: 'Search VMagaziine',
          suffixIcon: const Icon(Icons.search),
          focusColor: Colors.grey),
    );
  }
}
