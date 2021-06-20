import 'package:flutter/material.dart';
import 'package:rental/screens/Uploads/upload_space.dart';
import 'package:rental/widgets/default_appBar.dart';

import '../../utils/constants.dart';

class LandlordHomePage extends StatelessWidget {
  const LandlordHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
          titleText: 'Landlord Home Page',
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UploadHouse()));
          },
          icon: Icon(Icons.add_a_photo),
          backgroundColor: btnColor,
          elevation: 10,
          label: Text('Add a Space'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Stack(
                  children: [
                    Image.network("https://placeimg.com/640/480/any"),
                    SizedBox(
                      height: 20,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                          child: Column(
                        children: [
                          Text("Name :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Location :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Price :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Description"),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Card(
                child: Stack(
                  children: [
                    Image.network("https://placeimg.com/640/480/any"),
                    SizedBox(
                      height: 20,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                          child: Column(
                        children: [
                          Text("Name :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Location :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Price :"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Description"),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
