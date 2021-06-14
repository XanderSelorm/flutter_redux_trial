import 'package:flutter/material.dart';
import 'package:flutter_redux_trial/Views/TodoPage/ViewModel.dart';

class AddTodoWidget extends StatefulWidget {
  final ViewModel model;

  AddTodoWidget(this.model);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodoWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'add an Todo',
      ),
      onSubmitted: (String s) {
        print("Clicked on Add: $s");
        widget.model.onAddTodo(controller.value.text);
        controller.text = '';
      },
    );
  }
}
