import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          toggleableActiveColor: Colors.lightBlueAccent,
          textSelectionTheme: TextSelectionTheme.of(context).copyWith(
            cursorColor: Colors.lightBlueAccent,
            selectionColor: Colors.lightBlueAccent,
          ),
          primaryColor: Colors.lightBlueAccent,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 4.0, color: Colors.lightBlueAccent),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 4.0, color: Colors.lightBlueAccent),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(width: 4.0, color: Colors.lightBlueAccent),
            ),
          ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
