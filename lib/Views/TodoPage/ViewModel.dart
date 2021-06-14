import 'package:flutter_redux_trial/Models/todo_item.dart';
import 'package:flutter_redux_trial/Redux/Features/Todo/Actions/add_todo_action.dart';
import 'package:flutter_redux_trial/Redux/Features/Todo/Actions/remove_todo_action.dart';
import 'package:flutter_redux_trial/Redux/Features/Todo/Actions/remove_todos_action.dart';
import 'package:flutter_redux_trial/Redux/State/app_state.dart';
import 'package:redux/redux.dart';

class ViewModel {
  final List<TodoItem> todos;
  final Function(String) onAddTodo;
  final Function(TodoItem) onRemoveTodo;
  final Function() onRemoveTodos;

  ViewModel({
    required this.todos,
    required this.onAddTodo,
    required this.onRemoveTodo,
    required this.onRemoveTodos,
  });

  factory ViewModel.create(Store<AppState> store) {
    _onAddItem(String body) {
      print("###Adding Item: $body");
      store.dispatch(AddTodoAction(body));
    }

    _onRemoveItem(TodoItem item) {
      print("###Removing Item: $item");
      store.dispatch(RemoveTodoAction(item));
    }

    _onRemoveItems() {
      print("###Removing all");
      store.dispatch(RemoveTodosAction());
    }

    return ViewModel(
      todos: store.state.todoItems,
      onAddTodo: _onAddItem,
      onRemoveTodo: _onRemoveItem,
      onRemoveTodos: _onRemoveItems,
    );
  }
}
