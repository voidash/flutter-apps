import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import './components/app.dart';
import './models/Todo.dart';
import './redux/reducers.dart';

void main() {
  runApp(new TodoApp());
}

class TodoApp extends StatelessWidget {
  final Store<TodoState> store =
      Store<TodoState>(todoAppReducer, initialState: TodoState.initialState());

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: 'todo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new App(),
      ),
    );
  }
}
