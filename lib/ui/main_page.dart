import 'package:flutter/material.dart';
import 'package:flutter_app/ui/first_page.dart';
import 'package:flutter_app/ui/second_page.dart';
import 'package:flutter_app/ui/third_page.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _index = 0;
  List<Widget> _pages = [
    //리스트만들어서 123페이지생성위젯 넣기
    //다트는 배열이 없고 리스트만있다.
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : _pages[_index], //리액티브프로그래밍
      //페이지리스트의 인덱스에 있는 함수실행
      //처음에는 0
      bottomNavigationBar: BottomNavigationBar(
        //아래에 있는 네비게이션 바 영역 활성화
        items : [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label : ("홈")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services),
              label : ("이용서비스")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label : ("내 정보")
          ),
        ],
        //여기까지 네비게이션바 아이템 그림.
        //이제 아이콘 클릭했을때 인덱스 바뀌는 것 구현
        currentIndex : _index, //처음 0
        onTap: (int value) {
          //ontap: 사용자가 탭했을때 호출되는 것은? int value
          //value : 아이콘리스트의 인덱스값?
            print('tapped : $value');
            setState(() {
              // setState()Build함수 내부 위젯 다시 불러서 새로 그린다.
              _index = value ;
              //인덱스를 벨류값으로 수정
            });
        },

      ),
    );
  }
}
