import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helper/vertical_space.dart';
import '../../../core/widgets/custom_text_form_feiled.dart';
import '../../cubit/task_cubit.dart';

class PageTaskForms extends StatelessWidget {
  const PageTaskForms({super.key});
  

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key:formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(height: 20) ,
          Text("Title"),
          VerticalSpace(height: 10),
          CustomTextFormFeiled(controller: context.read<TaskCubit>().title),
          VerticalSpace(height: 20),
          Text("Describtion"),
          VerticalSpace(height: 10),
          CustomTextFormFeiled(
            controller: context.read<TaskCubit>().description,
            maxlines: 4,
          ),
        ],
      ),
    );
  }
}
