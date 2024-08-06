import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/tasks_notifier.dart';

class AddBottomSheet extends StatefulWidget {

   AddBottomSheet({super.key});

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Text(
            'Add Task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 26),
          )),
          TextField(
            controller: controller,
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent))),
          ),SizedBox(height: 10.0,),
          TextButton(
            onPressed: () {
               Provider.of<TasksNotifier>(context, listen: false).addTask(controller.text.trim());
               Navigator.pop(context);
               
             
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: BeveledRectangleBorder()),
          )
        ],
      ),
    );
  }
}
