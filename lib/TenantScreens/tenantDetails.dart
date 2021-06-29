import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/moreTenantDetails.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:rental/widgets/default_text_field.dart';

class TenantDetails extends StatefulWidget {
  @override
  _TenantDetailsState createState() => _TenantDetailsState();
}

class _TenantDetailsState extends State<TenantDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
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
  TextEditingController userName = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Image.asset("assets/Profile.png", fit: BoxFit.fill),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTextForm(
              controller: userName,
              hintText: 'Enter Username',
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTextForm(
                controller: firstName, hintText: 'Enter First Name'),
            SizedBox(
              height: 20,
            ),
            DefaultTextForm(controller: lastName, hintText: 'Enter Last Name'),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
              padding: 15,
                press: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MoreDetails())),
                text: 'Continue'),
          ],
        ),
      ),
    );
  }
}
