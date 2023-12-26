import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_model.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Task> tasks = Provider.of<List<Task>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('T.ILL GRAPHICS'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].title),
            trailing: Checkbox(
              value: tasks[index].isCompleted,
              onChanged: (value) {
                // Implement task completion logic here
              },
            ),
          );
        },
      ),
    );
  }
}

