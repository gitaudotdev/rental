import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key key,
    @required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16.0,
      left: 0.0,
      right: 0.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => AnimatedContainer(
              margin: EdgeInsets.all(10),
              duration: Duration(milliseconds: 300),
              height: 10.0,
              width: currentIndex == index ? 20 : 10.0,
              decoration: BoxDecoration(
                  color:
                      currentIndex == index ? Colors.white : Colors.blue[400],
                  borderRadius: BorderRadius.circular(8.0)),
            ),
          )),
    );
  }
}
