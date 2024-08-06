import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/tasks_notifier.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer(  
      builder: (context, TasksNotifier data, child) => ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: TaskTile(
              title: data.tasks[index].name,
              isDone: data.tasks[index].isDone,
              toggleDone: (value) => data.toggleTask(index),
            ),
            onLongPress: () => data.deleteTask(index),
          );
        },
        itemCount: data.tasks.length,
      ),
    );
  }
}
