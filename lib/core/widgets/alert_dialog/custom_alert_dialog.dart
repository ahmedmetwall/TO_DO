import 'package:flutter/material.dart';

import 'alert_dialog_bottons.dart';



class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.describtion,
    required this.primaryTitleBotton,
    required this.primaryFunctionBotton,
    required this.showSacoundaryBotton,
    this.secoundaryFunctionBotton,
    this.secoundaryTitleBotton,
  });
  final IconData icon;
  final Color color;
  final String title;
  final String describtion;
  final String primaryTitleBotton;
  final VoidCallback primaryFunctionBotton;
  final bool showSacoundaryBotton;
  final VoidCallback? secoundaryFunctionBotton;
  final String? secoundaryTitleBotton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      icon: CircleAvatar(
        radius: 35,
        backgroundColor: color.withOpacity(.15),
        child: Icon(icon, color: color, size: 50),
      ),
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Text(
        describtion,
        style: TextStyle(color: Colors.black, fontSize: 15),
        textAlign: TextAlign.center,
      ),
      actions: [
        AlertDialogBottons(
          showSacoundaryBotton: showSacoundaryBotton,
          primaryTitleBotton: primaryTitleBotton,
          secoundaryTitleBotton: secoundaryTitleBotton,
          primaryFunctionBotton: primaryFunctionBotton,
          secoundaryFunctionBotton: secoundaryFunctionBotton,
          color: color,
        ),
      ],
    );
  }
}
