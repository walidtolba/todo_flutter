import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/tasks_notifier.dart';
import 'package:todo_list_flutter/widgets/tasks_list.dart';
import 'package:todo_list_flutter/screens/add_bottom_sheet.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30.0,
                    ),
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 46),
                  ),
                  Text(
                    '${Provider.of<TasksNotifier>(context).count} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )
                ],
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: TasksList(),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () async {
          showModalBottomSheet(
              context: context, builder: (context) => AddBottomSheet());
        },
        backgroundColor: Colors.lightBlueAccent,
        shape: CircleBorder(),
      ),
    );
  }
}
