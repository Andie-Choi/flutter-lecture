import 'package:flutter/material.dart';
import 'package:flutter_app/counter.dart';
import 'package:flutter_app/list_exam.dart';
import 'package:flutter_app/Navigation/first_page.dart';
import 'package:flutter_app/ui/main_page.dart';
import 'package:flutter_app/insta/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      //안드로이드앱으로 만들꺼라서 ioS면 바꿔야함
      title: 'PRACTICE FLUTTER DAY1',
      theme: ThemeData(
        primarySwatch: Colors.orange,///////////이거바꾸면 스위치색깔도 바꿔지네
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(), //밑에Homepage가져옴
    );
  }
}

//stless화면하나 만들때 쓰는 명령어
class Homepage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //빌드 메소드를 자동호출하는 구조기때문에 빌드메소드(위젯)ㅇ ㅏㄴ에 넣어라..?


    Widget _buildButtonColumn(Color color, IconData icon, String label){
      return Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          Icon(icon, color:color,),
          Text(label, style:TextStyle(color:color),),
        ],
      );
    }
    Widget titleSection = Padding(
        padding: const EdgeInsets.all(16.0), //all사방에 8씩 패딩,여백을 먹이겠다!
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              //expanded임의위젯으로 감싸기
              child: Column(
                //수직상태구조만들기 자식들이 여러개들어가기때문에 child가아니라 children
                crossAxisAlignment: CrossAxisAlignment.start,
                //main정렬은 수직방향 cross는 수평방향 start로하면 컬럼영역안에서 왼쪽정렬
                children: [
                  //배열
                  Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Kandersteg, Switzerland',
                      style: TextStyle(
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.grey,
            ),
            //아이콘은 필수속성이 필요합니다. icons 클래스안에서 머테리얼디자인에서 제공하는 아이콘 모양이 다 들어있음.
            Text('41')
          ],
        ),
      );
    Widget btnSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.lightBlueAccent, Icons.add_call, "CALL"),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.near_me, "Route"),
        _buildButtonColumn(Colors.lightBlueAccent, Icons.share, "Share"),
      ],
    );
    Widget TextSection = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(

          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',

          softWrap: true,
        ),

    );

   return Scaffold(
      //머테리얼디자인으로 준비하는 코드. 기본셋팅. 하얀 바탕에 블루계열 테마.
      appBar: AppBar(
        //스캐폴드안에 있는 APPBAR라는 속성넣기
        title: Text("타이틀"), //컨트롤스페이스 누르면 고를 수 있는게 나옴
        //title -> Text()라는 위젯을 넣어야 된다.
      ),

      body: ListView( //coulum보다는 리스트뷰 . 작은 사이즈 폰에서도 쓰일수있게
        children: [
          Image.asset(
            'images/1.gif',
             width : double.infinity,//사진사이즈가아니라 뷰사이즈 가로를 꽉채워라.라는뜻.
             height : 240,
             fit: BoxFit.cover, //박스에 맞게 이미지 크기 조정
          ),
          Center(
            child: titleSection,
          ),
          btnSection, /////////////////////////////////
          TextSection,
        ],
      ),
      //Text위젯에 Alt+엔터하면 Wrap with Center누르면감싸준다.
    );
  }
}





class ButtenSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Column(
            //버튼이미지
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.call, color: Colors.blue),
              Text("Call",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  )),
            ]),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Icon(Icons.near_me, color: Colors.blue),
          Text("Route",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              )),
        ]),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.share, color: Colors.blue),
            Text("Share",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                )),
          ],
        ),
      ]),
    );
  }
}



//기타공부//
//Container(); 검은화면 .빈 위젯이라는 뜻. 도화지? 즉 이것만 있으면 아무것도 안나옴.
//''가 기본. ""도되긴됨
//컨트롤 알트 l :리포멧 코드 뷰티파이느낌 깔끔하게 정리된당.
//한줄 지우기 단축기?
