import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'model/task_model.dart';


class TaskCubit extends Cubit<List<Task>> {
  TaskCubit(super.initialState);
  final title = TextEditingController();
  final description = TextEditingController();
  
  void addTask(Task task) {
    final newTask = [...state, task];
    emit(newTask);
  }
  @override
 Future<void> close() {
    title.dispose();
    description.dispose();
    return super.close();
  }
  void changeTaskStatus(int index, bool value) {
    final updatedTasks = List<Task>.from(state);
    updatedTasks[index].isComplete = value;

    emit(updatedTasks);
  }

  void deleteTask(Task task) {
    final newTask = [...state];
    newTask.remove(task);
    emit(newTask);
  }

  void deleteAllTasks() {
    emit([]);
  }
}
