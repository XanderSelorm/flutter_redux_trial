import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_trial/Redux/State/app_state.dart';
import 'package:redux/redux.dart';
import 'Redux/Reducers/todo_reducer.dart';
import 'Views/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
    );
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Redux Items',
        theme: ThemeData.dark(),
        home: MyHomePage(),
      ),
    );
  }
}
