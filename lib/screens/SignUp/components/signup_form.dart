import 'package:flutter/material.dart';
import 'package:rental/firstPage.dart';
import 'package:rental/widgets/custom_btn.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            //Email
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: new TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
            //Password
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: new TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                obscureText: true,
              ),
            ),

            DefaultButton(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              color: Colors.blueGrey,
              text: 'Sign Up'.toUpperCase(),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            ),
            //Redirect to signup page
            GestureDetector(
              onTap: () {},
              child: Text(
                'I agree to the terms and conditions',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
