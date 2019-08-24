import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  //
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newtaskTitle) {
    tasks.add(
      Task(
        name: newtaskTitle,
      ),
    );
    notifyListeners();
  }
}
