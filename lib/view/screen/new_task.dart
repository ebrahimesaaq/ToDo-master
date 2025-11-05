import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_master/controller/Add%20Task/add_task.dart';
import 'package:todo_master/controller/home/daily_tasks_controller.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/data/Tasks/category_list.dart';
import 'package:todo_master/data/Tasks/priority_list.dart';
import 'package:todo_master/data/database/db_base.dart';
import 'package:todo_master/view/widget/New%20task/category_drop_down.dart';
import 'package:todo_master/view/widget/New%20task/due_date_form_field.dart';
import 'package:todo_master/view/widget/New%20task/save_button.dart';
import 'package:todo_master/view/widget/New%20task/task_note_form_field.dart';
import 'package:todo_master/view/widget/New%20task/task_title_form_field.dart';

class NewTask extends StatelessWidget {
  NewTask({super.key});

  final AddTask2 addTaskController = Get.put(AddTask2());
  final DailyTasksController dailyTasksController =
      Get.put(DailyTasksController());

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    TextEditingController titleController = TextEditingController();
    TextEditingController noteController = TextEditingController();
    TextEditingController dateController = TextEditingController();

    dateController.text =
        DateFormat('yyy-MM-dd').format(DateTime.now()).toString();

    String? category;
    String? priority;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        height: 70,
        child: SaveButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              final db = DbBase();
              await dailyTasksController.addTask(table: DbBase.miniTasks, row: {
                DbBase.miniTaskTitle: titleController.text,
                DbBase.miniTaskDescription: noteController.text,
                DbBase.miniTaskCategory: category,
                DbBase.miniTaskPriority: priority,
                DbBase.miniTaskDate: dateController.text,
                DbBase.miniTaskCheck: 0
              });
              dailyTasksController.fetchTasks();
              SnackBar(content: Text('taskAdded'.tr));
              Get.offAllNamed(AppRoutes.home);
            }
          },
        ),
      ),
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

              const SizedBox(height: 10),
              Text('taskNote'.tr, style: const TextStyle(fontSize: 18)),

              //? Task Note
              TaskNoteFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'tskNoteRequired'.tr;
                  }
                  return null;
                },
                controller: noteController,
              ),

              const SizedBox(height: 10),
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

              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Text('dueDate'.tr, style: const TextStyle(fontSize: 18)),

              //? Due Date  =================================================================
              DueDateFormField(
                onTap: () {
                  addTaskController.onMiniTaskPress(context, dateController);
                },
                controller: dateController,
                validator: (value) {
                  return value == null ? 'dateRequired'.tr : null;
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
