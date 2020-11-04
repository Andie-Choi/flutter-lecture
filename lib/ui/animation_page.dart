import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _height  = 100;
  double _width  = 100;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //??
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              _height = 200,
            });
          },
              child: Text("변환"),
          ),
          Center(
            child : AnimatedContainer( //값을 바꿔주면 자동으로 애니메이션?
              curve : Curves.bounceIn,
              width : _width,
              height: _height,
              color:Colors.yellow,
              duration: Duration(milliseconds:500), //이해안간다??
            )
          )
        ],
      ),
    );
  }
}
