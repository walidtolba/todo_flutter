import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final toggleDone;
  TaskTile({ required this.title, this.isDone = false, this.toggleDone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 16.0, decoration: isDone?TextDecoration.lineThrough:TextDecoration.none),
      ),
      trailing: Checkbox(value: isDone, onChanged: toggleDone)
    );
  }
}