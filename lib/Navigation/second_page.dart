

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name;

  SecondPage(String name) {
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("화면 전환 $name"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //그냥닫기 Navigator.pop(context);
                Navigator.pop(context,'아무말이나돌려주자');
              },
              child: Text('닫기'),
            )
          ],
        ));
  }
}
