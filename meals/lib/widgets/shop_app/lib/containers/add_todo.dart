import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_app/redux/actions.dart';

import '../models/Todo.dart';

class _ViewModel {
  final AddTodoPressedFunction addFunction;

  _ViewModel(this.addFunction);

  @override
  bool operator ==(Object other) {
    return identical(this, other) || runtimeType == other.runtimeType;
  }

  int get hashCode => 0;
}

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StoreConnector<TodoState, _ViewModel>(
      distinct: true,
      converter: (store) => new _ViewModel(
          (todoText) => store.dispatch(new AddTodoAction(text: todoText))),
      builder: (context, viewModel) => new TextField(
        controller: _controller,
        decoration: new InputDecoration(labelText: 'Add Todo'),
        onSubmitted: (todoText) {
          viewModel.addFunction(todoText);
          _controller.text = '';
        },
      ),
    );
  }
}
