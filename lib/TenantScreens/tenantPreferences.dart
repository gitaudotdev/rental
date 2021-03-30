


import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/availableHouses.dart';

class TenantPreferences extends StatefulWidget {
  @override
  _TenantPreferencesState createState() => _TenantPreferencesState();
}

class _TenantPreferencesState extends State<TenantPreferences> {
  bool tv = false;
  bool stereo = false;
  bool wifi= false;
  bool car = false;
  bool bicycle = false;
  bool babyCarriage = false;
  bool cigarettes = false;
  bool weed =false;
  bool hooker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tenant Preferences"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Media" ,
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)) ,
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Stereo System",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                      value: stereo,
                      onChanged: (value){
                        setState(() {
                          stereo=value;
                          print(stereo);
                        });
                      },
                      activeTrackColor: Colors.grey,
                      activeColor: Colors.purple,
                    ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Wifi",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: wifi,
                onChanged: (value){
                  setState(() {
                   wifi=value;
                    print(wifi);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("TV",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),

              Switch(
                value: tv,
                onChanged: (value){
                  setState(() {
                    tv=value;
                    print(tv);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Divider(color: Colors.purple,),
          SizedBox(height: 20,),
          Text("Parking" ,
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)) ,

          Row(
            children: [
              SizedBox(width: 10,),
              Text("Car",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: car,
                onChanged: (value){
                  setState(() {
                    car=value;
                    print(car);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Bicycle",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: bicycle,
                onChanged: (value){
                  setState(() {
                    bicycle=value;
                    print(bicycle);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Baby Carriage",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: babyCarriage,
                onChanged: (value){
                  setState(() {
                    babyCarriage=value;
                    print(babyCarriage);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Divider(color: Colors.purple,),
          SizedBox(height: 20,),
          Text("Smokers" ,
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)) ,

          Row(
            children: [
              SizedBox(width: 10,),
              Text("Cigarettes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: cigarettes,
                onChanged: (value){
                  setState(() {
                    cigarettes=value;
                    print(cigarettes);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Weed",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: weed,
                onChanged: (value){
                  setState(() {
                    weed=value;
                    print(weed);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Hookah",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)),
              SizedBox(width: 20,),
              Switch(
                value: hooker,
                onChanged: (value){
                  setState(() {
                    hooker=value;
                    print(hooker);
                  });
                },
                activeTrackColor: Colors.grey,
                activeColor: Colors.purple,
              ),
            ],
          ),

          ButtonTheme( minWidth: 500,
            child: RaisedButton(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>HousesPage(

                      )));
            },
              color: Colors.purple,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text("Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)) ,),
          ),

        ],

      ),
backgroundColor: Colors.deepPurple[50],
    );
  }
}
