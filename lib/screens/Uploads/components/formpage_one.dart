import 'package:flutter/material.dart';
import 'package:rental/widgets/default_text_field.dart';

class FormPage1 extends StatefulWidget {
  const FormPage1({
    Key key,
  }) : super(key: key);

  @override
  _FormPage1State createState() => _FormPage1State();
}

class _FormPage1State extends State<FormPage1> {
  TextEditingController location = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController description = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DefaultTextForm(
                      controller: title,
                      hintText: 'Enter title of property',
                    ),
                    SizedBox(height: 20),
                    DefaultTextForm(
                      controller: location,
                      hintText: 'Enter location of property',
                    ),
                    SizedBox(height: 20),
                    DefaultTextForm(
                      controller: price,
                      hintText: 'Enter rental price',
                    ),
                    SizedBox(height: 20),
                    DefaultTextForm(
                      controller: description,
                      hintText: 'Give a short description of the property',
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    DefaultTextForm(
                      controller: phone,
                      hintText: 'Enter Contact Phone Number',
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
