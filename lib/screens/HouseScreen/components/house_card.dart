import 'package:flutter/material.dart';
import 'package:rental/screens/HouseDetails/house_details.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HouseDetailsPage()));
          },
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://pix10.agoda.net/hotelImages/665/6658897/6658897_19031122450072912767.jpg?s=1024x768',
                  ),
                )),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on,
                        color: Colors.white, size: 15),
                    Text(
                      "Kapsabet",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                // Text.rich(
                //   TextSpan(children: [
                //     TextSpan(
                //         text: '4.5',
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18.0,
                //             fontWeight: FontWeight.w500)),
                //     WidgetSpan(
                //         alignment: PlaceholderAlignment.middle,
                //         child: Image.asset(
                //           'assets/star.png',
                //           height: 15,
                //           width: 15,
                //         ))
                //   ]),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ksh 5000 p/m',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      'Bills not included',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}