import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:rental/widgets/default_appBar.dart';

import '../../utils/constants.dart';

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
  final picker = ImagePicker();
  // String _price;
  // String _desc;
  // String _location;
  // String _phone;
  // String _name;
  final formKey = GlobalKey<FormState>();

  _imgFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  _imgFromGallery() async {
    final imagePicked =
        await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (imagePicked != null) {
        _image = File(imagePicked.path);
      } else {
        print('No Image Selected');
      }
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: 'Advertise a Space',
        action: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  backgroundColor: btnColor,
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
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    new TextFormField(
                      controller: name,
                      decoration: new InputDecoration(
                        hintText: " Name",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    new TextFormField(
                      controller: location,
                      decoration: new InputDecoration(
                        hintText: " Location",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    new TextFormField(
                      controller: price,
                      decoration: new InputDecoration(
                        hintText: "Price",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    new TextFormField(
                      controller: description,
                      decoration: new InputDecoration(
                        hintText: "Description",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    new TextFormField(
                      controller: phone,
                      decoration: new InputDecoration(
                        hintText: "Phone",
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultButton(press: () {}, text: 'Upload', padding: 15)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
