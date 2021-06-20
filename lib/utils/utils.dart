import 'package:flutter/material.dart';

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
        headline6: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 18,
    )),
  );
}

InputDecorationTheme inputDecoration() {
  UnderlineInputBorder outlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  );
  return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintStyle: TextStyle(color: Colors.white),
      border: outlineInputBorder);
}
