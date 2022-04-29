import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    new Task(name: 'Task 1'),
    new Task(name: 'Task 2'),
    new Task(name: 'Task 3'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    print(newTaskTitle);
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
