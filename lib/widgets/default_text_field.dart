import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  const DefaultTextForm({
    Key key,
    @required this.controller,
    @required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none, hintText: hintText),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
