import 'package:get/get.dart';
import 'package:todo_master/data/database/db_base.dart';

class DailyTasksController extends GetxController {
  var tasks = <Map<String, dynamic>>[].obs;
  var tasksCount = 0.obs;
  Future<void> fetchTasks() async {
    final db = DbBase();
    final data =
        await db.getAll(DbBase.miniTasks, '''${DbBase.miniTaskCheck} ASC,
        CASE
          WHEN ${DbBase.miniTaskPriority} = 'High, عالية' THEN 1
          WHEN ${DbBase.miniTaskPriority} = 'Medium, متوسطة' THEN 2
          WHEN ${DbBase.miniTaskPriority} = 'Low, منخفضة' THEN 3
          ELSE 4
        END ASC
        ''');
    final largeData =
        await db.getAll(DbBase.largeTasks, '''${DbBase.largeTaskProgress} ASC, 
        CASE
          WHEN ${DbBase.largeTaskPriority} = 'High, عالية' THEN 1
          WHEN ${DbBase.largeTaskPriority} = 'Medium, متوسطة' THEN 2
          WHEN ${DbBase.largeTaskPriority} = 'Low, منخفضة' THEN 3
          ELSE 4
        END ASC
        ''');
    final elementsData =
        await db.getAll(DbBase.elements, '${DbBase.elementCheck} ASC');

    tasks.assignAll([...data, ...largeData, ...elementsData]);
    int count = data.length + largeData.length;
    tasksCount.value = count;
  }

  Future<int> addTask({
    required String table,
    required Map<String, dynamic> row,
  }) async {
    final db = DbBase();
    final id = await db.insert(table, row);
    return id;
  }

  Future<void> deleteTask(int id) async {
    final db = DbBase();
    await db.delete(DbBase.miniTasks, DbBase.miniTasksId, id);
    await fetchTasks();
  }

  Future<void> updateTask({
    required String table,
    required String idColumn,
    required int id,
    required Map<String, dynamic> values,
  }) async {
    final db = DbBase();
    await db.update(table, idColumn, id, values);
  }

  @override
  void onInit() {
    super.onInit();
    fetchTasks();
  }
}
