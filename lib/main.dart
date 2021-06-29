import 'package:flutter/material.dart';
import 'package:rental/utils/constants.dart';
import 'package:rental/screens/SignUp/sign_up.dart';

import 'package:rental/utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: appBarTheme(),
            inputDecorationTheme: inputDecoration(),
            textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
            scaffoldBackgroundColor: primaryColor),
        home: SignUpPage());
  }
}
