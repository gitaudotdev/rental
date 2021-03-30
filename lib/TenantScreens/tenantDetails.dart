

import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/moreTenantDetails.dart';

class TenantDetails extends StatefulWidget {
  @override
  _TenantDetailsState createState() => _TenantDetailsState();
}

class _TenantDetailsState extends State<TenantDetails> {

  TextEditingController userName = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Details"),
        backgroundColor: Colors.purple,

      ),

      body: SingleChildScrollView (
        child: Column(
          children: [
            SizedBox(height: 100,),
            CircleAvatar(radius: 50, backgroundColor: Colors.grey,

              child: Image.asset("assets/Profile.png"
              ,
                  fit:BoxFit.fill),) ,
            SizedBox(height: 20,),
            new TextFormField(
              controller:userName,
              decoration: new InputDecoration(
                  labelText: "User Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in unfocused
                  ) ,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in focused
                  ) ,
                  border: UnderlineInputBorder(
                  )
              ),
              keyboardType: TextInputType.text,

            ),
            SizedBox(height: 20,),
            new TextFormField(
              controller:firstName,
              decoration: new InputDecoration(
                  labelText: "First Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in unfocused
                  ) ,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in focused
                  ) ,
                  border: UnderlineInputBorder(
                  )
              ),
              keyboardType: TextInputType.text,

            ),
            SizedBox(height: 20,),
            new TextFormField(
              controller:lastName,
              decoration: new InputDecoration(
                  labelText: "Last Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in unfocused
                  ) ,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                    //  when the TextFormField in focused
                  ) ,
                  border: UnderlineInputBorder(
                  )
              ),
              keyboardType: TextInputType.text,

            ),
            SizedBox(height: 20,),
            ButtonTheme( minWidth: 500,
              child: RaisedButton(onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>MoreDetails(

                        )));
              },
                color: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                child: Text("More Details",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)) ,),
            ),
          ],
        ),
      ),
    );
  }
}
