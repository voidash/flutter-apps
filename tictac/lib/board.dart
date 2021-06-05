import 'package:flutter/material.dart';
import './button.dart';

class TicBoard extends StatefulWidget {
  @override
  _TicBoardState createState() => _TicBoardState();
}

class _TicBoardState extends State<TicBoard> {
  var turn = 'x';
  var boardState = List.filled(9, '');
  var turnCount = 0;

  void updateGameState() {
    boardState[turnCount] = turn;
    turnCount++;
    turn = turn == 'x' ? 'O' : 'x';
    print('next turn is $turn');
  }

  void resetBoard() {
    boardState = List.filled(9, '');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < 9; i += 3)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: TicButton(i, boardState[i], updateGameState)),
                  TicButton(i + 1, boardState[i + 1], updateGameState),
                  TicButton(i + 2, boardState[i + 2], updateGameState),
                ],
              )
          ],
        ));
  }
}
