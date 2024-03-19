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

  /// deleting the todos according to the id
  void deleteTodo(int id) {
    List<TodoModel> filteredTodos =
        state.where((model) => model.id != id) as List<TodoModel>;

    state = filteredTodos;
  }
}

final todosProvider = StateNotifierProvider<TodoNotifier, List<TodoModel>>(
    (ref) => TodoNotifier());
