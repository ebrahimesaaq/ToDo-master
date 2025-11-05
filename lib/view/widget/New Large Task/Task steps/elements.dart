import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/home/daily_tasks_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/core/consts/routes.dart';
import 'package:todo_master/data/database/db_base.dart';

class Elements extends StatelessWidget {
  const Elements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final db = DbBase();
    DailyTasksController controller = Get.put(DailyTasksController());

    Map<String, dynamic>? arguments = Get.arguments;

    GlobalKey<FormState> formKey = GlobalKey();

    List<TextEditingController> elementsControllerList = [];
    List<Map<String, dynamic>> elementsList = [];

    final String title = arguments?['title'];
    final String desc = arguments?['note'];
    final String category = arguments?['category'];
    final String priority = arguments?['priority'];
    final int elements = arguments?['elements'];
    final String startDate = arguments?['start_date'];
    final String endDate = arguments?['end_date'];
    for (int i = 0; i < elements; i++) {
      elementsControllerList.add(TextEditingController());
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            for (int i = 0; i < elements; i++) {
              elementsList
                  .add({'title': elementsControllerList[i].text.trim()});
            }
            final largeTaskId = await controller.addTask(
              table: DbBase.largeTasks,
              row: {
                DbBase.largeTaskTitle: title,
                DbBase.largeTaskDescription: desc,
                DbBase.largeTaskCategory: category,
                DbBase.largeTaskPriority: priority,
                DbBase.largeTaskStartDate: startDate,
                DbBase.largeTaskEndDate: endDate,
                DbBase.largeTaskProgress: 0
              },
            );
            for (int i = 0; i < elementsList.length; i++) {
              await controller.addTask(table: DbBase.elements, row: {
                DbBase.elementCheck: 0,
                DbBase.elementDate: elementsControllerList[i].text,
                DbBase.elementTitle: elementsList[i]['title'],
                DbBase.elementLinkToLarge: largeTaskId,
              });
            }
            controller.fetchTasks();
            Get.offAllNamed(AppRoutes.home);
          }
        },
        child: const Icon(
          Icons.save,
          color: AppColor.white,
        ),
      ),
      appBar: AppBar(
        title: Text('elements'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: ListView.builder(
            itemCount: elements,
            itemBuilder: (context, index) {
              return Card(
                child: TextFormField(
                  controller: elementsControllerList[index],
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'elementsRequired'.tr;
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: 'elementsName'.tr),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
