import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';
import 'package:riverpod_task/pages/todos_page/widgets/task_input_dialog.dart';
import 'package:riverpod_task/providers/todo_providers.dart';

class DisplayTodoTile extends ConsumerWidget {
  final TodoModel model;
  const DisplayTodoTile({super.key, required this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        ref.read(todosProvider.notifier).deleteTodo(model.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
        child: ListTile(
          title: Text(model.task),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                tooltip: "hello",
                color: Colors.blue,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return TaskInputDialog(
                          isToEditTask: true,
                          model: model,
                        );
                      });
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                color: Colors.red,
                onPressed: () {
                  ref.read(todosProvider.notifier).deleteTodo(model.id);
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
