
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'LandLordScreens/welcome.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            child: new Column(
              children: [
                SizedBox(height: 250,),
                Center(
                  child:Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ButtonTheme(minWidth: 500,
                      child: RaisedButton(onPressed:(){},
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),

                          child: Center(
                            child: Row(
                              children: [ Icon(LineIcons.facebook,color: Colors.white,),
                                Text("Sign up with Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                        ) ,),
                    ),
                  ) ,


                Center(
                  child:Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ButtonTheme(
                      minWidth: 500,
                      child: RaisedButton(onPressed:(){},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Center(
                          child: Row(
                            children: [ Icon(LineIcons.apple),
                              Text("Sign up with Apple",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                            ],
                          ),
                        ) ,),
                    ),
                  ) ,
                ),

               Center(
                 child: Text("or",
                     style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 13))),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        //Email
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) {
                                return 'Provide an email';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "Email",labelStyle: new TextStyle(color:Colors.white ) ,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(20.0))),

                          ),
                        ),
                        //Password
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            validator: (input) {
                              if (input.length < 6) {
                                return 'Password should 6 character at least';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: "Password",labelStyle: new TextStyle(color:Colors.white ) ,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0))),

                            obscureText: true,
                          ),
                        ),

                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ButtonTheme(minWidth: 500,
                               child: RaisedButton(
                                color: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>WelcomeLandlord(

                                          )));
                                },
                                child: Text(
                                  'Sign Up',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 15.0),
                                ),
                          ),
                             ),
                           ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        ),
                        //Redirect to signup page
                        GestureDetector(
                          onTap: (){},
                          child: Text(
                            'I agree to the terms and conditions',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0,color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      ]
    );
  }
}
