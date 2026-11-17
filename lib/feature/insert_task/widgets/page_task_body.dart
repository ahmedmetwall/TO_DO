import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/vertical_space.dart';
import 'add_task_botton.dart';
import 'page_task_forms.dart';


class PageTaskBody extends StatelessWidget {
  const PageTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageTaskForms(),
              VerticalSpace(height: 50),

              AddTaskBotton()
            ],
          ),
        ),
      ),
    );
  }
}
