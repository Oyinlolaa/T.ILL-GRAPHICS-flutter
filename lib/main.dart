import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_list_screen.dart';
import 'models/task_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
@override
 Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'T.ILL GRAPHICS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskListScreen(),
        ),
    );
  }
}

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Learn how to design and build an awesome app'),
    // Add more tasks as needed
  ];

  List<Task> get tasks => _tasks;

  // Add methods for task manipulation (add, complete, delete) as needed
}
    
        
