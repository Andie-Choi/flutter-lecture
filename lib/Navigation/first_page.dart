import 'package:flutter/material.dart';
import 'package:flutter_app/Navigation/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("화면 전환"),
      ),
      body: _buildBody(context),
    );
  }


  Widget _buildBody(BuildContext context) {
    //가시성떄문에. 다른 클래스에서 못보게 만듬.
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //???????????????/
        children: [
          Text("나중에고치기"),
          ElevatedButton(
            onPressed: () {
              print("위");
              Navigator.push(
                //pop이 돌려주는값은 푸쉬에있음 future(돌려받는값)
                context, //context가 뭐냐? 플래터 프레임워크실행할때 꼭필요한놈.??
                MaterialPageRoute(builder: (context) => SecondPage('hello')),
              );
            },
            child: Text('클릭'),
          ),
          RaisedButton(
            onPressed: () {
              print("아래");
              Future<String> future = Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage("아래꺼")),
              );
              future.then((value) {
                setState(() {
                  if(value != null) {
                    name = value;
                  }
                });
              });
            },
            child: Text('클릭'),
          ),
          ElevatedButton(onPressed: (){
            setState((){
              name = "";
            }
            );
          }, child:Text("reset") )
        ],
      ),
    ); //RaisedButton()은 예전 기본버튼. 이제는 ElevateButton이 기본버튼
  }
}