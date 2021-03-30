

import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/tenantPreferences.dart';

class MoreDetails extends StatefulWidget {
  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  TextEditingController education = TextEditingController();
  TextEditingController profession = TextEditingController();
  TextEditingController ethnicity = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController marital = TextEditingController();
  TextEditingController children = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More Details"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            new TextFormField(
              controller:education,
              decoration: new InputDecoration(
                  labelText: "Education",
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
              controller:profession,
              decoration: new InputDecoration(
                  labelText: "Profession",
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
              controller:ethnicity,
              decoration: new InputDecoration(
                  labelText: "Ethnicity",
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
              controller:religion,
              decoration: new InputDecoration(
                  labelText: "Religion",
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
              controller:marital,
              decoration: new InputDecoration(
                  labelText: "Marital Status",
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
            SizedBox(height: 20,),
            new TextFormField(
              controller:children,
              decoration: new InputDecoration(
                  labelText: "Children",
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
                        builder: (context) =>TenantPreferences(

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
      ),
    );
  }
}
