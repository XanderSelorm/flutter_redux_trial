import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_trial/Redux/State/app_state.dart';
import 'package:flutter_redux_trial/Widgets/add_todo.dart';
import 'package:flutter_redux_trial/Widgets/remove_todos_button.dart';
import 'package:flutter_redux_trial/Widgets/todo_list.dart';
import 'package:redux/redux.dart';
import 'TodoPage/ViewModel.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux Items'),
      ),
      body: StoreConnector<AppState, ViewModel>(
          converter: (Store<AppState> store) => ViewModel.create(store),
          builder: (BuildContext context, ViewModel viewModel) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: <Widget>[
                    AddTodoWidget(viewModel),
                    Expanded(child: TodoListWidget(viewModel)),
                    RemoveTodosButton(viewModel),
                  ],
                ),
              )),
    );
  }
}
