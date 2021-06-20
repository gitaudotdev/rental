import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/tenantPreferences.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:rental/widgets/default_appBar.dart';
import 'package:rental/widgets/default_text_field.dart';

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
      appBar: DefaultAppBar(
        titleText: 'Complete Your Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                controller: education,
                hintText: 'State Education level',
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                controller: profession,
                hintText: 'Enter Profession',
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                controller: ethnicity,
                hintText: 'Enter Ethnicity',
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                  controller: religion, hintText: 'Enter Religous distinction'),
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                controller: marital,
                hintText: 'Enter Marital status',
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                controller: children,
                hintText: 'Enter Number of Children',
              ),
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TenantPreferences())),
                  text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
