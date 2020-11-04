import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState(); ///////////여기가 이해안가는뎅
}

class _CounterState extends State<Counter> {
  int count = 0;  //상태들은 다 이곳에 입력해야한다.
  @override
  Widget build(BuildContext context) {
    //int count = 0; //여기다 쓰면안된다.
    return Scaffold( //Scaffold build
      appBar: AppBar(
        title: Text("카운터"),
      ),
      body: Center(//body부분 가운데에
          child: Text( //텍스트 출력하는데
        '$count',//count라는 변수를 출력한다.
        style: TextStyle(fontSize: 80),//텍스트의 크기조절
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () { //익명함수. 이름이 없다. 이벤트를 처리하는 거라..
          print("click");
          setState(() {//화면을 다시 그리는 함수
            count++;//OnPressed되면, count함수 +1 된다.
          });
        },
        child: Icon(Icons.add), //floatingActionButton영역에 add라는 Icon을 넣어줌

      ),
    );
  }
}
