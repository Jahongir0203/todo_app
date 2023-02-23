import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:todo_app/widgets/tasks_tile.dart';

class TaskData extends ChangeNotifier {
  TaskData();

  List<Task> _task = [
    Task(name: 'Buy a milk'),
    Task(name: 'Buy a bread'),
    Task(name: 'Buy a water'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int taskCount() {
    return _task.length;
  }

  void addTaskTitle(String newTaskTitle) {
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void deleteItem(int index) {
    _task.removeAt(index);
    notifyListeners();
  }

  void upDateTask(Task task) {
    task.toggeDone();
    notifyListeners();
  }
}
