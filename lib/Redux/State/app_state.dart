import 'package:flutter_redux_trial/Redux/State/root_state.dart';

import '../../Models/todo_item.dart';

class AppState extends RootState {
  final List<TodoItem> todoItems;

  AppState({
    required this.todoItems,
  });

  AppState.initialState() : todoItems = List.unmodifiable(<TodoItem>[]);
}
