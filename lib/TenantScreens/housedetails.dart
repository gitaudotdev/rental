
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tabbar/tabbar.dart';

class AboutHouse extends StatefulWidget {
  @override
  _AboutHouseState createState() => _AboutHouseState();
}

class _AboutHouseState extends State<AboutHouse> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple[50],
      appBar: AppBar( backgroundColor: Colors.purple,
        title: Text("House Name",style: TextStyle(color: Colors.white),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,

              child:ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                child: Image.network(
                    'https://pix10.agoda.net/hotelImages/665/6658897/6658897_19031122450072912767.jpg?s=1024x768',
                    width: 500,
                    height: 300,
                    fit:BoxFit.fill

                ),
              ),
            ),
            SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),

              child:
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("About this space", style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 20),),
                         SizedBox(width: 100,),
                         Text("About the landlord", style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("Price :" + "ksh 5000 p/m", style: TextStyle(color: Colors.black,
                             fontSize: 15),),
                        SizedBox(width: 130,),
                        Text("Landlord : " + "John Kimani", style: TextStyle(color: Colors.black,
                             fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 20,),

                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(color: Colors.black,
                        fontSize: 15),),
                    SizedBox(height: 20,),
                    ButtonTheme( minWidth: 500,
                      child: RaisedButton(onPressed:(){

                      },
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Send Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)) ,),
                    ),
                  ],
                ),





            ),

          ],
        ),
      ),



      bottomNavigationBar: BottomNavigationBar( backgroundColor: Colors.purple,

        //onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(onTap: () {

            },
              child: Column(
                children: <Widget>[
                  Icon(LineIcons.home,color: Colors.white,size: 30,),
                  Text('Home', style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            title: Text(''),
          ),

          BottomNavigationBarItem(
              icon: GestureDetector( onTap: (){

              },
                child: Column(
                  children: <Widget>[
                    Icon(LineIcons.book,color: Colors.white, size: 30,
                    ),
                    Text('Spaces', style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: GestureDetector( onTap: (){

              },
                child: Column(
                  children: <Widget>[
                    Icon(LineIcons.sms,color: Colors.white, size: 30,
                    ),
                    Text('Messages', style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              title: Text("")
          )


        ],
      ),
    );
  }
}
