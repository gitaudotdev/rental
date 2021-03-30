



import 'package:flutter/material.dart';

class RecentUploads extends StatefulWidget {
  @override
  _RecentUploadsState createState() => _RecentUploadsState();
}

class _RecentUploadsState extends State<RecentUploads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text("Recent Uploads") ,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Image.network("https://placeimg.com/640/480/any"),
                SizedBox(height: 20,),
                Text("Name :"),
                SizedBox(height: 20,),
                Text("Location :"),
                SizedBox(height: 20,),
                Text("Price :"),
                SizedBox(height: 20,),
                Text("Description"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Card(
            child: Column(
              children: [
                Image.network("https://placeimg.com/640/480/any"),
                SizedBox(height: 20,),
                Text("Name :"),
                SizedBox(height: 20,),
                Text("Location :"),
                SizedBox(height: 20,),
                Text("Price :"),
                SizedBox(height: 20,),
                Text("Description"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
