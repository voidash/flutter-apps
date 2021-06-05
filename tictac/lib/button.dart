import 'package:flutter/material.dart';

class TicButton extends StatefulWidget {
  final int turn;
  final Function updateGameState;
  final String boardState;

  TicButton(this.turn, this.boardState, this.updateGameState);

  @override
  _TicButtonState createState() =>
      _TicButtonState(this.turn, this.boardState, this.updateGameState);
}

class _TicButtonState extends State<TicButton> {
  final int turn;
  String boardState;
  bool isPlayed = false;
  final Function updateGameState;

  _TicButtonState(this.turn, this.boardState, this.updateGameState);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        child: ElevatedButton(
            child: Text('$boardState'), onPressed: updateButton));
  }

  @override
  void didChangeDependencies() {
    print('dependency was changed');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  bool get checkDisabled {
    //if the button is already played then dont update
    return !isPlayed;
  }

  void updateButton() {
    if (!checkDisabled) return;
    setState(() {
      isPlayed = true;
      boardState = turn % 2 == 0 ? 'x' : 'o';
    });
    updateGameState();
  }
}
