import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];

          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            onChanged: (newValue) {
              taskData.toggleTask(index);
            },
            onDelete: () {
              taskData.deleteTask(index);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
