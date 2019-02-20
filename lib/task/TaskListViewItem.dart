import 'package:flutter/material.dart';
import 'Task.dart';

class TaskListViewItem extends StatelessWidget {
  final Task task;

  TaskListViewItem(this.task);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(task.title),
    );
  }
}
