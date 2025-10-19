import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/data/Tasks/category_list.dart';
import 'package:todo_master/data/Tasks/priority_list.dart';
import 'package:todo_master/view/widget/New%20task/category_drop_down.dart';
import 'package:todo_master/view/widget/New%20task/due_date_form_field.dart';
import 'package:todo_master/view/widget/New%20task/task_note_form_field.dart';
import 'package:todo_master/view/widget/New%20task/task_title_form_field.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Text('taskTitle'.tr, style: const TextStyle(fontSize: 18)),

          //? Task Title
          const TaskTitleFormField(),

          const SizedBox(height: 8),
          Text('taskNote'.tr, style: const TextStyle(fontSize: 18)),

          //? Task Note
          const TaskNoteFormField(),

          const SizedBox(height: 8),
          Text('category'.tr, style: const TextStyle(fontSize: 18)),

          //? Category
          CustomDropDown(
              items: categoryList,
              hintText: 'category'.tr,
              onChanged: (value) {}),

          const SizedBox(height: 8),
          Text('priority'.tr, style: const TextStyle(fontSize: 18)),

          //? Priority
          CustomDropDown(
              items: priorityList,
              hintText: 'priority'.tr,
              onChanged: (value) {}),
          const SizedBox(height: 8),
          Text('dueDate'.tr, style: const TextStyle(fontSize: 18)),

          //? Due Date
          const DueDateFormField(),
        ],
      ),
    );
  }
}
