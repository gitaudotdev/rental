import 'dart:io';

import 'package:flutter/material.dart';

class FormPage3 extends StatefulWidget {
  const FormPage3({
    Key key,
  }) : super(key: key);

  @override
  _FormPage3State createState() => _FormPage3State();
}

class _FormPage3State extends State<FormPage3> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {},
        child: Container(
            width: 200,
            height: 200,
            child: _image == null
                ? Text('No Image Selected')
                : Image.file(_image)),
      ),
      Container(
        height: 150,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 8.0),
            itemBuilder: (context, index) {
              return _image == null
                  ? Text('No Image Selected')
                  : Image.file(_image);
            }),
      )
    ]);
  }
}
