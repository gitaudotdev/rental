
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rental/LandLordScreens/uploadHouses.dart';

class WelcomeLandlord extends StatefulWidget {
  @override
  _WelcomeLandlordState createState() => _WelcomeLandlordState();
}

class _WelcomeLandlordState extends State<WelcomeLandlord> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: new Column(
        children: [
          SizedBox(height: 250,),
          Center(
            child:Text("Welcome [Davis Gitau]",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)) ,
          ),
          SizedBox(height: 5,),
          Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed:() async {

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  UploadHouse(

                  )));
              },
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: Text("Upload a House",
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>SignUpPage(
                //
                //         )));
              },
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: Text("My Uploads",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)) ,),
            ) ,
          ),

        ],
      ),
    );
  }
}
