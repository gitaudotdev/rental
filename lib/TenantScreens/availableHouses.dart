
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rental/TenantScreens/housedetails.dart';

class HousesPage extends StatefulWidget {
  @override
  _HousesPageState createState() => _HousesPageState();
}


class _HousesPageState extends State<HousesPage> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: Text("Available Houses"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            children: [
              Container( color: Colors.black,
                height: 300,

                child:ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                          'https://pix10.agoda.net/hotelImages/665/6658897/6658897_19031122450072912767.jpg?s=1024x768',
                          width: 400,
                          height: 200,
                         fit:BoxFit.fill

                      ),
                      Row(
                        children: [
                          SizedBox(height: 40,),
                          Text("Location :" + "Kapsabet", style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(width: 20,),
                          Text("Price :" +"KSh 5000 p/m", style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ) ,
                      Row(
                        children: [
                          Text("Featured House", style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: 15),),
                          Image.asset("assets/star.png",height: 10,width: 10,),
                          Image.asset("assets/star.png",height: 10,width: 10,),
                          Image.asset("assets/star.png",height: 10,width: 10,),
                          Image.asset("assets/star.png",height: 10,width: 10,),
                          Image.asset("assets/star.png",height: 10,width: 10,),
                          SizedBox(width: 10,),
                          ButtonTheme( minWidth: 50,
                            child: RaisedButton(onPressed:(){

                            },
                              color: Colors.purple,
                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              child: Text("View More info",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13)) ,),
                          ),
                          SizedBox(width: 20,),
                          ButtonTheme( minWidth: 70,
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
                    ],
                  ),
                ),


              ),
              SizedBox(height: 20,),
              Text("Other Houses", style: TextStyle(color: Colors.purple,
                  fontWeight: FontWeight.bold, fontSize: 20),),


              SingleChildScrollView( scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>AboutHouse(

                                    )));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            child: Image.network(
                                'https://placeimg.com/640/480/any',
                                 width: 250,
                                height: 300,
                                fit:BoxFit.fill

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            child: Image.network(
                                'https://placeimg.com/640/480/any',
                                width: 250,
                                height: 300,
                                fit:BoxFit.fill

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            child: Image.network(
                                'https://placeimg.com/640/480/any',
                                 width: 250,
                                height: 300,
                                fit:BoxFit.fill

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            child: Image.network(
                                'https://placeimg.com/640/480/any',
                                width: 250,
                                height: 300,
                                fit:BoxFit.fill

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            child: Stack(
                              children: [
                               Image.network(
                                  'https://placeimg.com/640/480/any',
                                  width: 250,
                                  height: 300,
                                  fit:BoxFit.fill

                              ),

                                Column(
                                  children: [
                                    SizedBox(height: 200,),
                                    Text("sdfghjkl", style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold, fontSize: 20),),
                                  ],
                                )

                            ]
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
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
