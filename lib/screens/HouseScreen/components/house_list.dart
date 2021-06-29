import 'dart:math';

import 'package:flutter/material.dart';

class HouseList extends StatelessWidget {
  const HouseList({
    Key key,
    this.rowController,
  }) : super(key: key);

  final ScrollController rowController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://placeimg.com/640/480/any'),
                )),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Column(
              children: [
                Text(
                  "sdfghjkl",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ))
      ],
    );
  }
}
