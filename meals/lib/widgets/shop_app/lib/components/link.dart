import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  final bool active;
  final String text;
  final VoidCallback onPressed;

  Link({
    @required this.active,
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return new TextButton(
      onPressed: onPressed,
      child: new Text(text),
    );
  }
}