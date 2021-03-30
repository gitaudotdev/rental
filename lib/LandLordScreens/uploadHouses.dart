import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rental/LandLordScreens/recentUploads.dart';

class UploadHouse extends StatefulWidget {


  @override
  _UploadHouseState createState() => _UploadHouseState();
}

class _UploadHouseState extends State<UploadHouse> {
  TextEditingController location = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController description = TextEditingController();


  File _image;
  // String _price;
  // String _desc;
  // String _location;
  // String _phone;
  // String _name;
  final formKey = GlobalKey<FormState>();

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Upload a House"
        ),
        backgroundColor: Colors.purple,
        actions: <Widget>[


         IconButton(
           icon: Icon(Icons.logout ,color: Colors.white,),
           onPressed: () {

           },
         ),
        ],
      ),

      body:
      //SingleChildScrollView(
      Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.purple,
                child: _image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.file(
                    _image,

                    fit: BoxFit.fill,
                  ),
                )
                    : Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50)),
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
          ),
          new TextFormField(
            controller:name,
            decoration: new InputDecoration(
                labelText: " Name",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in unfocused
                ) ,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in focused
                ) ,
                border: UnderlineInputBorder(
                )
            ),
            keyboardType: TextInputType.text,

          ),
          new TextFormField(
            controller:location,
            decoration: new InputDecoration(
                labelText: " Location",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in unfocused
                ) ,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in focused
                ) ,
                border: UnderlineInputBorder(
                )
            ),
            keyboardType: TextInputType.text,

          ),
          new TextFormField(
            controller:price,
            decoration: new InputDecoration(
                labelText: "Price",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in unfocused
                ) ,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in focused
                ) ,
                border: UnderlineInputBorder(
                )
            ),
            keyboardType: TextInputType.text,

          ),
          new TextFormField(
            controller:description,
            decoration: new InputDecoration(
                labelText: "Description",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in unfocused
                ) ,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in focused
                ) ,
                border: UnderlineInputBorder(
                )
            ),
            keyboardType: TextInputType.text,

          ),
          new TextFormField(
            controller:phone,
            decoration: new InputDecoration(
                labelText: "Phone",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in unfocused
                ) ,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple),
                  //  when the TextFormField in focused
                ) ,
                border: UnderlineInputBorder(
                )
            ),
            keyboardType: TextInputType.phone,

          ),
          SizedBox(height: 20,),
          ButtonTheme( minWidth: 500,
            child: RaisedButton(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>RecentUploads(

                      )));
            },
              color: Colors.purple,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              child: Text("Upload",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13)) ,),
          ),

        ],
      ),
    );
  }
}
