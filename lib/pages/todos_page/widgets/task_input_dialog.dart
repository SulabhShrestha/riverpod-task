import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';
import 'package:riverpod_task/providers/todo_providers.dart';

/// This dialog is versatile, works for both adding and editing the task
class TaskInputDialog extends ConsumerStatefulWidget {
  final bool isToEditTask;
  final TodoModel? model;
  const TaskInputDialog({super.key, this.model, this.isToEditTask = false});

  @override
  ConsumerState<TaskInputDialog> createState() => _TaskInputDialogState();
}

class _TaskInputDialogState extends ConsumerState<TaskInputDialog> {
  String task = "", title = '', stateOperationBtnTitle = '';

  @override
  void initState() {
    task = widget.model?.task ?? "";
    title = widget.isToEditTask ? "Edit task" : "Add new task";
    stateOperationBtnTitle = widget.isToEditTask ? "Edit" : "Save";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: TextField(
        decoration: InputDecoration(
          hintText: widget.model?.task,
        ),
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
                  if (widget.isToEditTask) {
                    ref
                        .read(todosProvider.notifier)
                        .editTodo(widget.model!.id, task);
                  } else {
                    ref.read(todosProvider.notifier).addNewTodo(TodoModel(
                        id: DateTime.now().millisecondsSinceEpoch, task: task));
                  }
                  Navigator.pop(context);
                },
          child: Text(stateOperationBtnTitle),
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
