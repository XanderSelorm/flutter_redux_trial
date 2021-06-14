import 'package:flutter/material.dart';
import 'package:flutter_redux_trial/Views/TodoPage/ViewModel.dart';

class RemoveTodosButton extends StatelessWidget {
  final ViewModel model;

  RemoveTodosButton(this.model);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Deleting all Items'),
      onPressed: () => model.onRemoveTodos(),
    );
  }
}
