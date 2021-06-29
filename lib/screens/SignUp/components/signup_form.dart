import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rental/firstPage.dart';
import 'package:rental/model/authResponse.dart';
import 'package:rental/model/user.dart';
import 'package:rental/screens/HouseScreen/house_screen.dart';
import 'package:rental/utils/constants.dart';
import 'package:rental/widgets/custom_btn.dart';

import 'package:http/http.dart' as http;

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool _isLoading = false;
  final storage = FlutterSecureStorage();

  Future authenticateUser(Map request) async {
    return http
        .post(Uri.parse('http://192.168.0.104:1337/auth/local/register'),
            body: request)
        .catchError((onError) {
      _isLoading = false;
    }).then((http.Response response) {
      int statusCode = response.statusCode;
      print({'http response', json.encode(response.body)});
      if (statusCode < 200 || statusCode >= 400) {
        Fluttertoast.showToast(
            msg: 'Your Account does not exist, please register',
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.amber[300],
            textColor: Colors.white,
            fontSize: 18.0);
      } else {
        return json.decode(response.body);
      }
    });
  }

  _formSubmit() async {
    if (_formKey.currentState.validate()) {
      String identifier = _email.text;
      String password = _password.text;
      Map<String, String> req = {
        'email': identifier,
        'username': identifier,
        'password': password
      };

      var result = await authenticateUser(req);

      if (result != null) {
        await storage.write(key: 'user', value: json.encode(result));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstPage()));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchSessionAndNavigate();
  }

  _fetchSessionAndNavigate() async {
    String userMap = await storage.read(key: 'user');
    if (userMap == null) {
      return;
    }

    print({'userMap', userMap});
    User user = User.fromMap(json.decode(userMap));
    if (user != null && user.token != "") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HousesPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          backgroundBlendMode: BlendMode.colorBurn,
          color: Colors.black45),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            //Email
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: new TextStyle(color: Colors.white),
                ),
              ),
            ),
            //Password
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: new TextStyle(color: Colors.white),
                ),
                obscureText: true,
              ),
            ),

            DefaultButton(
              press: _formSubmit,
              padding: 15,
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
