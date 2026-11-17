import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color, required this.width, required this.height,
  });
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize:  WidgetStatePropertyAll<Size>(Size(width, height)),
        backgroundColor: WidgetStatePropertyAll<Color>(color),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 15)),
    );
  }
}
