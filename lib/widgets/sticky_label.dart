import 'package:flutter/material.dart';

class StickyLabel extends StatelessWidget {
  const StickyLabel({
    Key key,
    @required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(labelText,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20));
  }
}