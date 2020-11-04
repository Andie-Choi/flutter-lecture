import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("kakao T"),
      ),
      body: ListView(
        //ListView:위젯을 리스트형식으로 배치해서 보여준다.
        //스크롤할수있다
        children: [
          _buildMenuSection(),
          _buildAdSection(),
          _buildNoticeSection(),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String title) {
    //한 열에 한 아이콘과 아이콘이름까지 생성함수
    return Column(
      children: [
        Icon(icon, size: 80),
        Text(title),
      ],
    );
  }

  Widget _buildMenuSection() {
    //메뉴
    return Column(
      children: [
        Container(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //한 행에 방금 위에서만든 아이콘생성함수를 이용해서 만든
          // 아이콘4열을 넣어준다.
          children: [
            _buildItem(Icons.local_taxi, "택시"),
            _buildItem(Icons.car_rental, "블랙"),
            _buildItem(Icons.bike_scooter, "바이크"),
            _buildItem(Icons.drive_eta_rounded, "대리"),
          ],
        ),
        SizedBox(
          //공간 만들어 줌. container써도 무방
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //한줄 더 추가
          children: [
            _buildItem(Icons.local_taxi, "2택시"),
            _buildItem(Icons.car_rental, "2블랙"),
            _buildItem(Icons.bike_scooter, "2바이크"),
            Opacity(
                opacity: 0.0, //위치잡아놓고 안보이게 함.
                child: _buildItem(Icons.drive_eta_rounded, "대리")),
          ],
        ),
        Container(
          //container써도 무방
          height: 40,
        ),
      ],
    );
  }

  Widget _buildAdSection() {
    //배너
    return CarouselSlider(
      //플러터패키지 다운로드
     //https://pub.dev/flutter/packages
      //
      items: [
        Container(//배너1
          color: Colors.blueGrey, // 임의로 색깔설정
        ),
        Container(//배너2
          color: Colors.lightGreen,
        ),
        Container(//배너3
          color: Colors.pink,
        ),
      ],
      options: CarouselOptions(//실행옵션
          height: 180,
          autoPlay: true,//자동으로 넘어감
          autoPlayInterval: Duration(milliseconds: 500)),
          // 플레이구간 시간 설정
    );
  }

  Widget _buildNoticeSection() {
    //공지사항
    return Column(
       children: [
        ListTile(
          //leading(왼쪽 머리 공간)
          //title(가운데 글씨쓰는 공간)
          //subtitle(타이틀 아래)
          //trailing(오른쪽 꼬리공간)
          leading: Icon(Icons.info_outline),
          title: Text("[공지] 이벤트 당첨 축하드립니다."),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text("[공지] 합격자 발표"),
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text("[공지] ???"),
        ),
      ],
    );
  }
}
