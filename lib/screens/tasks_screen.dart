import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

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
                child: Icon(Icons.list, color: Colors.lightBlueAccent, size: 30.0,),radius: 30.0,
              ),SizedBox(height: 14.0,),
              Text('Todoey', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 46),),
              Text('12 Tasks', style: TextStyle(color: Colors.white, fontSize: 18.0),)
            ],
          )),
          Expanded(
            child: Container(decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),),
          )
        ],
      )),
    );
  }
}
