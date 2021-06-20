import 'package:flutter/material.dart';


import 'components/signup_form.dart';
import 'components/social_btns.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/background.jpg",
        colorBlendMode: BlendMode.dst,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    ]);
  }
}

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: new Column(
          children: [
            SizedBox(
              height: 250,
            ),
            SocialBtns(),
            Center(
                child: Text("or",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13))),
            SizedBox(
              height: 10,
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
