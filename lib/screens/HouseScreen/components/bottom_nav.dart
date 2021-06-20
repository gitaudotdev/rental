import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rental/utils/constants.dart';



class DefaultNav extends StatelessWidget {
  const DefaultNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: primaryColor,
      //onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Icon(
                    LineIcons.home,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Icon(
                    LineIcons.book,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Spaces',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            title: Text("")),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Icon(
                    LineIcons.sms,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Messages',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            title: Text(""))
      ],
    );
  }
}