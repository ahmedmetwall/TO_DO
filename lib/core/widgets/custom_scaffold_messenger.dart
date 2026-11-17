import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomScaffoldMessenger {
  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        backgroundColor: Colors.teal,
        duration: Duration(seconds: 2),
        content: Row(
          children: [
            Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.white,
              size: 30.sp,
            ),
            SizedBox(width: 15.w),
            Text(
              'Successfully',
              style: TextStyle(color: Colors.white, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
