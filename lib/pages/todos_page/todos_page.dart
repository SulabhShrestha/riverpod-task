import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';
import 'package:riverpod_task/pages/todos_page/widgets/display_todo_tile.dart';
import 'package:riverpod_task/pages/todos_page/widgets/task_input_dialog.dart';
import 'package:riverpod_task/providers/todo_providers.dart';

class TodosPage extends ConsumerWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos Page"),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          var todos = ref.watch(todosProvider);

          if (todos.isEmpty) {
            return const Text("Empty task. Add to see. ");
          }
          return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (_, index) {
                var model = todos[index];

                return DisplayTodoTile(model: todos[index]);
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return const TaskInputDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
