import 'package:flutter/material.dart';

class Rootpage extends StatefulWidget {
  @override
  _RootpageState createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: ElevatedButton(onPressed: () {
          //login
        }, child: Text("log in"), ),
      ),
    );
  }
}
