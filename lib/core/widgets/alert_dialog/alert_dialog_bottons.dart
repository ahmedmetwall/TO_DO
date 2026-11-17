import 'package:flutter/material.dart';

import 'custom_elevated_botton.dart';


class AlertDialogBottons extends StatelessWidget {
  const AlertDialogBottons({
    super.key,
    required this.showSacoundaryBotton,
    required this.primaryTitleBotton,
    required this.secoundaryTitleBotton,
    required this.primaryFunctionBotton,
    required this.secoundaryFunctionBotton,
    required this.color,
  });
  final bool showSacoundaryBotton;
  final String primaryTitleBotton;
  final String? secoundaryTitleBotton;
  final VoidCallback primaryFunctionBotton;
  final VoidCallback? secoundaryFunctionBotton;
  final Color color;

  @override
  Widget build(BuildContext context) {
    if (showSacoundaryBotton) {
      // Secoundary botton
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // secoundary botton
          CustomElevatedButton(
            onPressed: secoundaryFunctionBotton!,
            text: secoundaryTitleBotton!,
            color: Colors.transparent,
            width: 125,
            height: 45,
          ),
          SizedBox(width: 10,),
          // primary botton
          CustomElevatedButton(
            onPressed: primaryFunctionBotton,
            text: primaryTitleBotton,
            color: color,
            width: 125,
            height: 45,
          ),
        ],
      );
    }
    return CustomElevatedButton(
      onPressed: primaryFunctionBotton,
      text: primaryTitleBotton,
      color: color,
      width: 260,
      height: 45,
    );
  }
}
