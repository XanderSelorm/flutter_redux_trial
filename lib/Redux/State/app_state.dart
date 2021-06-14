import '../../Models/todo_item.dart';

class AppState {
  final bool? isLoading;
  final String? currentErrorMessage;
  final List<TodoItem> todoItems;

  AppState({
    this.isLoading,
    this.currentErrorMessage,
    required this.todoItems,
  });

  AppState.initialState()
      : todoItems = List.unmodifiable(<TodoItem>[]),
        isLoading = false,
        currentErrorMessage = "";
}
