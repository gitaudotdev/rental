import 'package:flutter/material.dart';
import 'package:rental/widgets/default_text_field.dart';

class FormPage2 extends StatefulWidget {
  const FormPage2({
    Key key,
  }) : super(key: key);

  @override
  _FormPage2State createState() => _FormPage2State();
}

class _FormPage2State extends State<FormPage2> {
  TextEditingController size = TextEditingController();
  TextEditingController  type = TextEditingController();
  TextEditingController contractLength = TextEditingController();


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
                      controller: size,
                      hintText: 'Enter size of property/Apartment',
                    ),
                    SizedBox(height: 20),
                    DefaultTextForm(
                      controller: type,
                      hintText: 'pick property type',
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: DefaultTextForm(
                            controller: contractLength,
                            hintText: 'Enter contract length',
                          ),
                        ),
                        Expanded(
                          child: DefaultTextForm(
                            controller: contractLength,
                            hintText: 'Enter contract length',
                          ),
                        ),
                      ],
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
