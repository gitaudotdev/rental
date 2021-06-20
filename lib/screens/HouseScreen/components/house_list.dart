import 'package:flutter/material.dart';
import 'package:rental/TenantScreens/housedetails.dart';

class HouseList extends StatelessWidget {
  const HouseList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutHouse()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.network('https://placeimg.com/640/480/any',
                      width: 250, height: 300, fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.network('https://placeimg.com/640/480/any',
                      width: 250, height: 300, fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.network('https://placeimg.com/640/480/any',
                      width: 250, height: 300, fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.network('https://placeimg.com/640/480/any',
                      width: 250, height: 300, fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Stack(children: [
                    Image.network('https://placeimg.com/640/480/any',
                        width: 250, height: 300, fit: BoxFit.fill),
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                          "sdfghjkl",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}