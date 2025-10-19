import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/data/Tasks/category_list.dart';
import 'package:todo_master/data/Tasks/priority_list.dart';
import 'package:todo_master/view/widget/New%20task/category_drop_down.dart';
import 'package:todo_master/view/widget/New%20task/due_date_form_field.dart';
import 'package:todo_master/view/widget/New%20task/save_button.dart';
import 'package:todo_master/view/widget/New%20task/task_note_form_field.dart';
import 'package:todo_master/view/widget/New%20task/task_title_form_field.dart';

class NewLargeTask extends StatelessWidget {
  const NewLargeTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('newTask'.tr),
      ),
      body: Padding(
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
            Text('elements'.tr, style: const TextStyle(fontSize: 18)),

            //? Priority
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'elements'.tr,
                ),
                onChanged: (value) {}),
            const SizedBox(height: 8),
            Text('dueDate'.tr, style: const TextStyle(fontSize: 18)),

            //? Due Date
            const DueDateFormField(),

            const SizedBox(
              height: 8,
            ),

            //? Save button
            SizedBox(
                height: 40,
                child: SaveButton(
                  onPressed: () {
                    Get.offNamed('/elements');
                  },
                ))
          ],
        ),
      ),
    );
  }
}
