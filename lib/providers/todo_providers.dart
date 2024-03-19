import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';

class TodoNotifier extends StateNotifier<List<TodoModel>> {
  TodoNotifier() : super([]);

  /// Adds new todos item
  void addNewTodo(TodoModel model) {
    state = [...state, model];

    debugPrint("State: $state");
  }

  /// edit on the basis of id
  void editTodo(int id, String task) {
    var todos = <TodoModel>[];

    // looping and finding the correct one
    for (var todo in state) {
      if (todo.id != id) {
        todos.add(todo);
        continue;
      }

      // modifying
      todos.add(todo.copyWith(task: task));
    }

    state = todos;
  }

  /// deleting the todos according to the id
  void deleteTodo(int id) {
    List<TodoModel> filteredTodos =
        state.where((model) => model.id != id).toList();

    state = filteredTodos;
  }
}

final todosProvider = StateNotifierProvider<TodoNotifier, List<TodoModel>>(
    (ref) => TodoNotifier());
