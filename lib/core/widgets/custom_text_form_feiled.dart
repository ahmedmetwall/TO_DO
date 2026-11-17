import 'package:flutter/material.dart';

class CustomTextFormFeiled extends StatelessWidget {
  const CustomTextFormFeiled({super.key, required this.controller, this.maxlines});
  final TextEditingController controller;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.teal, width: 2),
        ),
      ),
    );
  }
}
