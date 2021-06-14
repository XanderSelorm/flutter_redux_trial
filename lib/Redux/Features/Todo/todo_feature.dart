import 'package:flutter_redux_trial/Redux/State/app_state.dart';

class TodoFeature extends AppState {
  final int id;
  final String body;

  TodoFeature({required this.id, required this.body}) : super.initialState();

  TodoFeature copyWith({int? id, String? body}) {
    return TodoFeature(id: id ?? this.id, body: body ?? this.body);
  }
}
