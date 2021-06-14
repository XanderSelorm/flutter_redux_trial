import 'package:flutter/material.dart';
import 'package:flutter_redux_trial/Models/todo_item.dart';
import 'package:flutter_redux_trial/Views/TodoPage/ViewModel.dart';

class TodoListWidget extends StatelessWidget {
  final ViewModel model;

  TodoListWidget(this.model);

  @override
  Widget build(BuildContext context) {
    for (var item in model.todos) {
      print("${item.body}");
    }
    return ListView(
      children: model.todos
          .map((TodoItem item) => ListTile(
                title: Text(item.body),
                leading: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => model.onRemoveTodo(item),
                ),
              ))
          .toList(),
    );
  }
}
