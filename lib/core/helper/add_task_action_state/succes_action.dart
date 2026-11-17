import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_to_do/feature/task_view/task_view_page.dart';

import '../../../feature/cubit/model/task_model.dart';
import '../../../feature/cubit/task_cubit.dart';
import '../../widgets/custom_scaffold_messenger.dart';

void succesAction(BuildContext context) {
  context.read<TaskCubit>().addTask(
    Task(
      title: context.read<TaskCubit>().title.text,
      description: context.read<TaskCubit>().description.text,
      isComplete: false,
    ),
  );
  context.read<TaskCubit>().title.clear();
  context.read<TaskCubit>().description.clear();
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  CustomScaffoldMessenger().showSnackBar(context);
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TaskViewPage()),
  );
}
