import 'package:flutter/widgets.dart';

import '../models/Todo.dart';
import 'actions.dart';

List<Todo> todosReducer(List<Todo> state, TodoAction action) {
  if (action is AddTodoAction) {
    return <Todo>[]
      ..addAll(state)
      ..add(new Todo(id: action.id, text: action.text));
  }

  if (action is ToggleTodoAction) {
    return state
        .map((Todo todo) => todo.id == action.id
            ? todo.copyWith(completed: !todo.completed)
            : todo)
        .toList();
  }
  return state;
}


VisibilityFilter visibilityFilterReducer(VisibilityFilter state, action) {
  if (action is SetVisibilityFilterAction) {
    return action.filter;
  }

  return state;

}
TodoState todoAppReducer(TodoState state, dynamic action) {
  return new TodoState(
    todosReducer(state.todos, action),
    visibilityFilterReducer(state.visibilityFilter, action),
  );
}
