import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/controller/home/daily_tasks_controller.dart';
import 'package:todo_master/core/consts/app_color.dart';
import 'package:todo_master/data/database/db_base.dart';

class TabBarMonthly extends StatelessWidget {
  const TabBarMonthly({super.key});

  @override
  Widget build(BuildContext context) {
    final db = DbBase();
    final controller = Get.put(DailyTasksController());
    return Obx(
      () {
        final largeTasks = controller.tasks
            .where((l) =>
                (l.containsValue('Monthly') || l.containsValue('شهرية')) &&
                l.containsKey(DbBase.largeTaskTitle))
            .toList();

        final miniTasks = controller.tasks
            .where((m) =>
                m.containsKey(DbBase.miniTaskTitle) &&
                (m.containsValue('Monthly') || m.containsValue('شهرية')))
            .toList();

        final elements = controller.tasks
            .where((e) => e.containsKey(DbBase.elementLinkToLarge))
            .toList();

        return ListView(
          children: [
            ...miniTasks.map(
              (task) => Card(
                color: task[DbBase.miniTaskCheck] == 1
                    ? AppColor.green
                    : AppColor.white,
                child: ListTile(
                  title: Text(task[DbBase.miniTaskTitle]),
                  subtitle: Text(task[DbBase.miniTaskDescription] ?? ''),
                  trailing: IconButton(
                      onPressed: () async {
                        final id = task[DbBase.miniTasksId];
                        final check = task[DbBase.miniTaskCheck];

                        await db.update(
                          DbBase.miniTasks,
                          DbBase.miniTasksId,
                          id,
                          {
                            DbBase.miniTasksId: task[DbBase.miniTasksId],
                            DbBase.miniTaskCheck: check == 0 ? 1 : 0,
                          },
                        );
                        await controller.fetchTasks();
                      },
                      icon: task[DbBase.miniTaskCheck] == 1
                          ? const Icon(
                              Icons.check_box,
                              color: AppColor.primaryColor,
                            )
                          : const Icon(Icons.check_box_outline_blank)),
                ),
              ),
            ),
            ...largeTasks.map(
              (largeTask) {
                final relatedElements2 = elements
                    .where(
                      (e) =>
                          e[DbBase.elementLinkToLarge] ==
                          largeTask[DbBase.largeTaskId],
                    )
                    .toList();

                final elements2com2 = relatedElements2
                    .where(
                      (e) => e[DbBase.elementCheck] == 1,
                    )
                    .toList();
                return Card(
                  color: elements2com2.length == relatedElements2.length &&
                          relatedElements2.isNotEmpty
                      ? Colors.tealAccent[100]
                      : AppColor.white,
                  child: ExpansionTile(
                    subtitle: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${'progress'.tr}: ${elements2com2.length} ${'of'.tr} ${relatedElements2.length}',
                              style: const TextStyle(
                                  fontSize: 12, color: AppColor.grey1),
                            ),
                            Text(
                              '${(elements2com2.length / relatedElements2.length * 100).toInt()} %',
                              style: const TextStyle(
                                  fontSize: 12, color: AppColor.grey1),
                            ),
                          ],
                        ),
                        LinearProgressIndicator(
                          color:
                              elements2com2.length / relatedElements2.length ==
                                      1
                                  ? AppColor.green
                                  : elements2com2.length /
                                              relatedElements2.length >=
                                          0.75
                                      ? Colors.green[400]
                                      : elements2com2.length /
                                                  relatedElements2.length >=
                                              0.5
                                          ? Colors.orange
                                          : elements2com2.length /
                                                      relatedElements2.length >=
                                                  0.25
                                              ? Colors.deepOrange
                                              : Colors.red,
                          backgroundColor: AppColor.grey3,
                          value: elements2com2.length / relatedElements2.length,
                        ),
                      ],
                    ),
                    title: Text(largeTask[DbBase.largeTaskTitle]),
                    children: [
                      ...relatedElements2.map(
                        (toElement) => ListTile(
                          title: Text(toElement[DbBase.elementTitle]),
                          trailing: IconButton(
                            onPressed: () async {
                              final elementId = toElement[DbBase.elementId];

                              final check = toElement[DbBase.elementCheck];

                              await controller.updateTask(
                                table: DbBase.elements,
                                idColumn: DbBase.elementId,
                                id: elementId,
                                values: {
                                  DbBase.elementId: toElement[DbBase.elementId],
                                  DbBase.elementCheck: check == 0 ? 1 : 0,
                                },
                              );

                              await controller.fetchTasks();
                            },
                            icon: toElement[DbBase.elementCheck] == 1
                                ? const Icon(
                                    Icons.check_box,
                                    color: AppColor.primaryColor,
                                  )
                                : const Icon(
                                    Icons.check_box_outline_blank,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 80),
          ],
        );
      },
    );
  }
}
