import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../feature/cubit/task_cubit.dart';
import 'falier_action.dart';
import 'succes_action.dart';




void addTaskActions(BuildContext context) {
  if (context.read<TaskCubit>().title.text.trim().isNotEmpty &&
      context.read<TaskCubit>().description.text.trim().isNotEmpty) {
    succesAction(context);
  } else {
    falierAction(context);
  }
}
