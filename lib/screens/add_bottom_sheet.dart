import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

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
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightBlueAccent))),
          ),SizedBox(height: 10.0,),
          TextButton(
            onPressed: () {},
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
