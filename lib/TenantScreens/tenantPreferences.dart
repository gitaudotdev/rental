import 'package:flutter/material.dart';
import 'package:rental/utils/constants.dart';
import 'package:rental/screens/HouseScreen/house_screen.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:rental/widgets/default_appBar.dart';
import 'package:rental/widgets/sticky_label.dart';

class TenantPreferences extends StatefulWidget {
  @override
  _TenantPreferencesState createState() => _TenantPreferencesState();
}

class _TenantPreferencesState extends State<TenantPreferences> {
  bool tv = false;
  bool stereo = false;
  bool wifi = false;
  bool car = false;
  bool bicycle = false;
  bool babyCarriage = false;
  bool weed = false;
  bool hooker = false;
  bool cigarettes = false;

  final Map<String, bool> preferences = {
    'tv': false,
    'stereo': false,
    'wifi': false,
    'car': false,
    'bicycle': false,
    'baby Carriage': false,
    'Weed': false,
    'hooker': false,
    'cigarettes': false
  };

  final List<String> extrasCategories = [
    'Media',
    'Children',
    'Vices',
  ];

  var extras = [];
  getExtrasList() {
    preferences.forEach((key, value) {
      if (value == true) {
        extras.add(key);
      }
    });
    print(extras);
    extras.clear(); //clear array after submit
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: 'Your Extras',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          StickyLabel(
            labelText: 'Media',
          ),
          Expanded(
            child: ListView(
                children: preferences.keys.map((String key) {
              return CheckboxListTile(
                title: Text(key.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                value: preferences[key],
                activeColor: Colors.blue,
                checkColor: btnColor,
                onChanged: (bool value) {
                  setState(() {
                    preferences[key] = value;
                  });
                },
              );
            }).toList()),
          ),
          DefaultButton(
            padding: 15,
            text: 'Finish',
            press: () => {
              getExtrasList(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HousesPage()))
            },
          ),
        ],
      ),
    );
  }
}
