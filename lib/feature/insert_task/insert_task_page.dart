import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_app_bar.dart';
import 'widgets/page_task_body.dart';

class InsertTaskPage extends StatefulWidget {
  const InsertTaskPage({super.key});

  @override
  State<InsertTaskPage> createState() => _InsertTaskPageState();
}

class _InsertTaskPageState extends State<InsertTaskPage> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: CustomAppBar(title: "Add your task"),
      ),
      body: Container(
        width: double.infinity,
        height: 590.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/background_app_image.png"),
          ),
        ),
        child: PageTaskBody(),
      ),
    );
  }
}