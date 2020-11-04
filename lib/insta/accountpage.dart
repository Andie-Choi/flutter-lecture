import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  @override
  _AccountpageState createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
        ],
      ),
      body : Center(),
    );
  }
}
