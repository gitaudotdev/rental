import 'package:flutter/material.dart';
import 'package:rental/utils/constants.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({Key key, this.img}) : super(key: key);

  final String img;

  @override
  _MySliverAppBarState createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: primaryColor,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(
              height: 200,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context,index) =>Image.network(
                    'https://pix10.agoda.net/hotelImages/665/6658897/6658897_19031122450072912767.jpg?s=1024x768',
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
