import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  const DefaultTextForm({
    Key key,
    @required this.controller,
    @required this.hintText,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      keyboardType: keyboardType == null ? TextInputType.text : keyboardType,
    );
  }
}
