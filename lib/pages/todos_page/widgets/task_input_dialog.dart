import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';
import 'package:riverpod_task/providers/todo_providers.dart';

class TaskInputDialog extends ConsumerStatefulWidget {
  const TaskInputDialog({super.key});

  @override
  ConsumerState<TaskInputDialog> createState() => _TaskInputDialogState();
}

class _TaskInputDialogState extends ConsumerState<TaskInputDialog> {
  String task = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add new task"),
      content: TextField(
        onChanged: (text) {
          setState(() => task = text);
        },
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      actionsPadding: const EdgeInsets.only(right: 12, bottom: 8, top: 4),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.red, foregroundColor: Colors.white),
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue.shade500,
              foregroundColor: Colors.white),
          onPressed: !checkForValidText()
              ? null
              : () {
                  ref.read(todosProvider.notifier).addNewTodo(TodoModel(
                      id: DateTime.now().millisecondsSinceEpoch, task: task));
                  Navigator.pop(context);
                },
          child: const Text("Save"),
        ),
      ],
    );
  }

  bool checkForValidText() {
    if (task.isEmpty) {
      return false;
    }

    // Efficiently check for non-whitespace characters using a regular expression
    return RegExp(r'\S').hasMatch(task);
  }
}
