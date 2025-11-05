import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_master/controller/Add%20Task/add_task.dart';
import 'package:todo_master/data/Tasks/category_list.dart';
import 'package:todo_master/data/Tasks/priority_list.dart';
import 'package:todo_master/view/widget/New%20task/category_drop_down.dart';
import 'package:todo_master/view/widget/New%20task/due_date_form_field.dart';
import 'package:todo_master/view/widget/New%20task/save_button.dart';
import 'package:todo_master/view/widget/New%20task/task_note_form_field.dart';
import 'package:todo_master/view/widget/New%20task/task_title_form_field.dart';

class NewLargeTask extends StatelessWidget {
  NewLargeTask({super.key});
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController elementsController = TextEditingController();

  AddTask2 addTaskController = Get.put(AddTask2());

  late String category;
  late String priority;
  @override
  Widget build(BuildContext context) {
    dateController.text =
        DateFormat('yyyy-MM-dd to yyyy-MM-dd').format(DateTime.now());
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text('newTask'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Text('taskTitle'.tr, style: const TextStyle(fontSize: 18)),

              //? Task Title

              TaskTitleFormField(
                controller: titleController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'taskTitleRequired'.tr;
                  }
                  return null;
                },
              ),

              const SizedBox(height: 8),
              Text('taskNote'.tr, style: const TextStyle(fontSize: 18)),

              //? Task Note
              TaskNoteFormField(
                controller: descriptionController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'tskNoteRequired'.tr;
                  }
                  return null;
                },
              ),

              const SizedBox(height: 8),
              Text('category'.tr, style: const TextStyle(fontSize: 18)),

              //? Category
              CustomDropDown(
                  validator: (value) {
                    if (value == null) {
                      return 'categoryRequired'.tr;
                    }
                    return null;
                  },
                  items: categoryList,
                  hintText: 'category'.tr,
                  onChanged: (value) {
                    category = value.toString();
                  }),

              const SizedBox(height: 8),
              Text('priority'.tr, style: const TextStyle(fontSize: 18)),

              //? Priority
              CustomDropDown(
                  validator: (value) {
                    if (value == null) {
                      return 'priorityRequired'.tr;
                    }
                    return null;
                  },
                  items: priorityList,
                  hintText: 'priority'.tr,
                  onChanged: (value) {
                    priority = value.toString();
                  }),
              const SizedBox(height: 8),
              Text('elements'.tr, style: const TextStyle(fontSize: 18)),

              //? Priority
              TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'elementsRequired'.tr;
                    }
                    return null;
                  },
                  controller: elementsController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'elements'.tr,
                  ),
                  onChanged: (value) {}),
              const SizedBox(height: 8),
              Text('dueDate'.tr, style: const TextStyle(fontSize: 18)),

              //? Due Date
              DueDateFormField(
                onTap: () {
                  addTaskController.onLargeTaskPress(context, dateController);
                },
                validator: (value) {
                  return value == null ? 'dateRequired'.tr : null;
                },
                controller: dateController,
              ),

              const SizedBox(
                height: 8,
              ),

              //? Save button
              SizedBox(
                  height: 40,
                  child: SaveButton(
                    onPressed: () {
                      try {
                        if (formKey.currentState!.validate()) {
                          Get.offNamed('/elements', arguments: {
                            'title': titleController.text,
                            'note': descriptionController.text,
                            'category': category,
                            'priority': priority,
                            'elements': int.parse(elementsController.text),
                            'start_date': dateController.text.split(' to ')[0],
                            'end_date': dateController.text.split(' to ')[1],
                          });
                        }
                      } on Exception catch (e) {
                        Get.snackbar('Error', 'Unknown error \n $e',
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
