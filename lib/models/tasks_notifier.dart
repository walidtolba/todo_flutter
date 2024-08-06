
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_list_flutter/models/task.dart';

class TasksNotifier extends  ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy mild'), Task(name: 'Buy Bread')
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get count => _tasks.length;

  void addTask(text){
    _tasks.add(Task(name: text));
    notifyListeners();

  }
  void toggleTask(index){
    _tasks[index].toggleDone();
    notifyListeners();
  }
  void deleteTask(index){
    _tasks.removeAt(index);
    notifyListeners();
  }
  
}