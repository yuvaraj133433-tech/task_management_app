import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tasks"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.taskForm);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount:100 , // later connect with Bloc
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Task $index"),
            subtitle: const Text("Due tomorrow"),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.taskDetail,
                  arguments: {"id": index});
            },
          );
        },
      ),
    );
  }
}
