
import 'package:flutter_todo/models/todo_model.dart';
import 'package:uuid/uuid.dart';

class TodoListManager extends StateNotifier<List<TodoModel>> {
  TodoListManager([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);
  
  void addTodo(String description){
    state = state.add(TodoModel(id: Uuid().v4(), description: description))
  }
}
