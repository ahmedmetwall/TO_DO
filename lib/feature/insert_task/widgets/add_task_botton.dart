import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/add_task_action_state/add_task_actions.dart';


class AddTaskBotton extends StatelessWidget {
  const AddTaskBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addTaskActions(context);
      },
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.teal,
        ),
        child: Center(
          child: Text(
            "Add Task",
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
