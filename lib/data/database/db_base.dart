import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbBase {
  static Database? _db;

  static const String _dbName = 'my_database.db';

  static const int _dbVersion = 1;

  static const String miniTasks = 'tasks';
  static const String miniTaskPriority = 'task_priority';
  static const String miniTaskCategory = 'task_category';
  static const String miniTaskTitle = 'task_title';
  static const String miniTaskDate = 'task_date';
  static const String miniTaskCheck = 'task_check';
  static const String miniTasksId = 'tasks_id';
  static const String miniTaskDescription = 'mini_task_desc';

  static const String largeTasks = 'big_tasks';
  static const String largeTaskPriority = 'big_task_priority';
  static const String largeTaskCategory = 'big_task_category';
  static const String largeTaskProgress = 'big_task_progress';
  static const String largeTaskTitle = 'big_task_title';
  static const String largeTaskDateRange = 'big_task_date_range';
  static const String largeTaskCheck = 'big_task_check';
  static const String largeTaskId = 'big_tasks_id';
  static const String largeTaskDescription = 'big_task_desc';

  static const String elements = 'elements';
  static const String elementTitle = 'element_title';
  static const String elementDate = 'element_date';
  static const String elementId = 'element_id';
  static const String elementCheck = 'element_check';
  static const String elementLinkToLarge = 'element_link';

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), _dbName);

    return await openDatabase(
      path,
      version: _dbVersion,
      onCreate: _onCreate,
      onOpen: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
    );
  }

  static Future _onCreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE $miniTasks (
  $miniTasksId INTEGER PRIMARY KEY AUTOINCREMENT,
  $miniTaskCheck INTEGER,
  $miniTaskDate TEXT NOT NULL,
  $miniTaskTitle TEXT NOT NULL,
  $miniTaskCategory TEXT NOT NULL,
  $miniTaskPriority TEXT NOT NULL,
  $miniTaskDescription TEXT NOT NULL
)
''');

    await db.execute('''
CREATE TABLE $largeTasks(
  $largeTaskCheck INTEGER,
  $largeTaskCategory TEXT NOT NULL,
  $largeTaskPriority TEXT NOT NULL,
  $largeTaskDateRange TEXT NOT NULL,
  $largeTaskDescription TEXT NOT NULL,
  $largeTaskProgress INTEGER,
  $largeTaskTitle TEXT NOT NULL,
  $largeTaskId INTEGER PRIMARY KEY AUTOINCREMENT
)
''');

    await db.execute('''
CREATE TABLE $elements(
  $elementCheck INTEGER,
  $elementDate TEXT NOT NULL,
  $elementId INTEGER PRIMARY KEY AUTOINCREMENT,
  $elementTitle TEXT NOT NULL,
  $elementLinkToLarge INTEGER,
  FOREIGN KEY ($elementLinkToLarge) 
  REFERENCES $largeTasks($largeTaskId) 
  ON DELETE CASCADE
 )
''');
  }

  Future<int> insert(String table, Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> getAll(
      String table, String? orderBy) async {
    Database db = await database;
    return await db.query(table, orderBy: orderBy);
  }

  Future<int> update(
      String tableId, String table, Map<String, dynamic> row) async {
    Database db = await database;
    int id = row[tableId];
    return await db.update(table, row, where: '$tableId = ?', whereArgs: [id]);
  }

  Future<int> delete(String table, String tableId, int id) async {
    Database db = await database;
    return await db.delete(table, where: '$tableId = ?', whereArgs: [id]);
  }
}
