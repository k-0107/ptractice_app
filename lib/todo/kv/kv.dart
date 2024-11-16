import 'package:shared_preferences/shared_preferences.dart';

// Future<void> saveTask(String value) async {
//   final prefs = await SharedPreferences.getInstance();

//   await prefs.setString('task', value);
// }

// Future<String> loadTask() async{
//   final prefs = await SharedPreferences.getInstance();

//   final value = prefs.getString('task');
//   return value ?? '今日のタスクはありません';
// }

Future<void> saveTasks(List<String> tasks) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setStringList('tasks', tasks);
}

Future<List<String>> loadTasks() async {
  final prefs = await SharedPreferences.getInstance();

  final tasks = prefs.getStringList('tasks');
  return tasks ?? ['tasks', '今日のタスクはありません'];
}
