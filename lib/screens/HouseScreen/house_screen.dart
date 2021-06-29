import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:rental/model/houses.dart';
import 'package:rental/model/user.dart';
import 'package:rental/screens/HouseScreen/components/house_card.dart';
import 'package:rental/screens/HouseScreen/components/house_list.dart';
import 'package:rental/utils/constants.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:http/http.dart' as http;

import 'components/bottom_nav.dart';

class HousesPage extends StatefulWidget {
  @override
  _HousesPageState createState() => _HousesPageState();
}

class _HousesPageState extends State<HousesPage> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: DefaultNav(),
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
  List<Spaces> apartments;
  var isLoading = false;
  User user;

  getUser() async {
    final storage = FlutterSecureStorage();
    String userJson = await storage.read(key: 'user');
    Map<String, dynamic> user = json.decode(userJson);
    setState(() {
      this.user = User.fromMap(user);
    });
  }

  getApartments() async {
    //make sure to add params to get apts by tags
    await http.get(Uri.http(base_url, '/spaces'), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${user.token}'
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        HouseCard(),    
        SizedBox(
          height: 20,
        ),
        HouseList()
      ],
    ));
  }
}
