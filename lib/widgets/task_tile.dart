
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Buy milk', style: TextStyle(fontSize: 16.0),),
        trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
