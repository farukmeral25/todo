import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/init/service_locator.dart';
import 'package:todo_app/feature/home/controller/todo_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
      ),
      body: Consumer<ToDoController>(
        builder: (context, controller, child) => ListView.builder(
          itemBuilder: (context, index) {
            final todo = controller.todos[index];
            return ListTile(
              title: Text(todo.title),
              subtitle: Text(todo.description),
              leading: Checkbox(
                value: todo.isCompleted,
                onChanged: (value) => controller.toggleTodoStatus(todo.id),
              ),
              trailing: IconButton(
                onPressed: () => controller.removeTodoByID(todo.id),
                icon: const Icon(Icons.delete),
              ),
            );
          },
          itemCount: controller.todos.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => sl<ToDoController>().addTodo(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
