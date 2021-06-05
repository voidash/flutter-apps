import 'package:flutter/material.dart';
import './board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TicTacToe App ',
        theme: ThemeData(
                 primarySwatch: Colors.blue,
        ),
        home: Scaffold(appBar: AppBar(title: Text('Tic Tac Toe')),
        body: TicBoard()
        ));

          
  }
}
