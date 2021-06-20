import 'package:flutter/material.dart';
import 'package:rental/screens/HouseScreen/components/house_card.dart';
import 'package:rental/screens/HouseScreen/components/house_list.dart';
import 'package:rental/widgets/custom_btn.dart';

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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: [
          HouseCard(),
          DefaultButton(press: () {}, text: 'Send Message'),
          SizedBox(
            height: 20,
          ),
          HouseList()
        ],
      ),
    );
  }
}


