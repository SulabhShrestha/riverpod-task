import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/models/todo_model/todo_model.dart';

class TodoProvider extends StateNotifier<List<TodoModel>> {
  TodoProvider() : super([]);

  /// Adds new todos item
  void addNewTodo(TodoModel model) {
    state = [...state, model];
  }

  /// deleting the todos according to the id
  void deleteTodo(int id) {
    List<TodoModel> filteredTodos =
        state.where((model) => model.id != id) as List<TodoModel>;

    state = filteredTodos;
  }
}
