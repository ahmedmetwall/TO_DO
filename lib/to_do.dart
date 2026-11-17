import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/insert_task/insert_task_page.dart';

class ToDo extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // You can use the library anywhere in the app even in theme
          home: child,
        );
      },
      child: InsertTaskPage(),
    );
  }
}