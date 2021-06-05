import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './todo_tile.dart';
import '../models/Todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final TodoTapFunction onTodoTap;

  TodoList({
    @required this.todos,
    @required this.onTodoTap,
  });

  List<Widget> _buildListItems() {
    return todos
        .map((todo) => new TodoTile(
              key: new Key(todo.id.toString()),
              todo: todo,
              onTap: onTodoTap,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: _buildListItems(),
    );
  }
}