import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/tenantDetails.dart';
import 'package:rental/screens/Landlord/landord_home.dart';

import 'widgets/custom_btn.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Are you a landlord or a tenant?",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        SizedBox(height: 20),
        DefaultButton(
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => TenantDetails())),
            text: "I am A Tenant"),
        DefaultButton(
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LandlordHomePage())),
            text: "I am A Landlord"),
      ]),
    );
  }
}
