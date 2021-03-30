import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/availableHouses.dart';
import 'package:rental/TenantScreens/tenantDetails.dart';
import 'package:rental/TenantScreens/tenantPreferences.dart';
import 'package:rental/signUpPage.dart';

class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: new Column(
        children: [
          SizedBox(height: 250,),
          Center(
            child:Text("Are you a landlord or a tenant?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)) ,
          ),
          SizedBox(height: 5,),
          Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>TenantDetails(

                        )));
              },
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text("I am a tenant",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)) ,),
            ) ,
          ),
          SizedBox(height: 1,),
          Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>SignUpPage(

                        )));
              },
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: Text("I am a landlord",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)) ,),
            ) ,
          ),
          SizedBox(height: 70,),
          Center(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonTheme(
                minWidth: 500,
                child: RaisedButton(
                  onPressed:(){},
                  color: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text("Done",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13)) ,

                ),
              ),

            ) ,
          )
        ],
      ),
    );
  }
}
