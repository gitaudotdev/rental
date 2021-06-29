import 'package:flutter/material.dart';

const primaryColor = Color(0xFF1B222E);
const secondColor = Color(0xFF596A83);
const colorGrey = Color(0xFFCCCCCC);
const textColor = Color(0xFFFFFFFF);
const btnColor = Color(0xFF6E52FC);

const gradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF6E52FC), Color(0xFF52A0F8)]);

const animationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);

//form Errors
final RegExp emailValidation =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 15),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder());

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: textColor));
}

const String base_url = "localhost:1337/";
