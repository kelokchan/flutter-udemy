import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = '';

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            style: TextStyle(
              fontSize: 21.0,
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(title);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              padding: EdgeInsets.all(15.0),
            ),
          )
        ],
      ),
    );
  }
}
