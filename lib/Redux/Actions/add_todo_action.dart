class AddTodoAction {
  static int _id = 0;
  final String item;

  AddTodoAction(this.item) {
    _id++;
  }

  int get id => _id;
}
