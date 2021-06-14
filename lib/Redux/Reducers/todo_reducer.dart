import 'package:flutter_redux_trial/Redux/State/app_state.dart';

import '../../../../Models/todo_item.dart';
import '../Actions/add_todo_action.dart';
import '../Actions/remove_todo_action.dart';
import '../Actions/remove_todos_action.dart';

List<TodoItem> todoReducer(List<TodoItem> state, action) {
  if (action is AddTodoAction) {
    print("%%%%action: adding item: ${action.item}");
    return []
      ..addAll(state)
      ..add(TodoItem(id: action.id, body: action.item));
  }

  if (action is RemoveTodoAction) {
    return List.unmodifiable(List.from(state)..remove(action.item));
  }

  if (action is RemoveTodosAction) {
    return List.unmodifiable([]);
  }

  return state;
}

AppState appStateReducer(AppState state, action) {
  return AppState(
    todoItems: todoReducer(state.todoItems, action),
  );
}
