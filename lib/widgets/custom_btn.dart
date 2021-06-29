import 'package:flutter/material.dart';
import 'package:rental/utils/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.color,
    @required this.press,
    this.width,
    this.text,
    this.textColor,
    this.height,
    this.child,
    @required this.padding,
  }) : super(key: key);

  final Color color, textColor;
  final Function press;
  final double width, height, padding;
  final String text;
  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SizedBox(
        width: width != null ? width : double.infinity,
        height: height != null ? height : 56,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color != null ? color : btnColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)))),
            onPressed: press,
            child: child == null
                ? Text(text,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: textColor != null ? textColor : Colors.white))
                : child),
      ),
    );
  }
}
