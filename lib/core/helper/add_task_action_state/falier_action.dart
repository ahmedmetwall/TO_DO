import 'package:flutter/material.dart';

import '../../widgets/alert_dialog/custom_alert_dialog.dart';

void falierAction(BuildContext context){
  showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          icon: Icons.cancel_outlined,
          color: Colors.red,
          title: 'Missing Information',
          describtion:
              'Please complete all required fields\nbefore continuing.',

          primaryTitleBotton: 'Got it',
          primaryFunctionBotton: () {
            Navigator.pop(context);
          },
          showSacoundaryBotton: false,
        );
      },
    );
}