import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class SecondPage  extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}


class _SecondPageState extends State<SecondPage > {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("이용 서비스"),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: (){}),
          TextButton(onPressed: (){}, child: Text("menu")),
        ], //메뉴들 . 리스트위젯. 아무거나들어간다는뜻
      ),
      body:  Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 300,
              child: (_image != null) ? Image.file(_image) : Placeholder(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Gallery"),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                ),
                RaisedButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text("Camera"),
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                ),
              ],
            )
          ],
        ),
      ),

    );
  }

  void getImage(ImageSource source) async {
    print("getImageFromGallery");
    var image = await ImagePicker.pickImage(source: source);

    setState(() {
      _image = image;
    });
  }
}
