import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rental/widgets/custom_btn.dart';

class SocialBtns extends StatelessWidget {
  const SocialBtns({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          press: () {},
          child: Row(
            children: [
              Icon(
                LineIcons.facebook,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text("Sign up with Facebook",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
            ],
          ),
        ),
        DefaultButton(
          press: () {},
          color: Colors.white,
          child: Row(
            children: [
              Icon(
                LineIcons.googleLogo,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text("Sign up with Google",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
            ],
          ),
        ),
      ],
    );
  }
}
