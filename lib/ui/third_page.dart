import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/ui/user_detail_page.dart';
import 'package:flutter_app/widget/kakao_list_tile.dart';

class ThirdPage extends StatelessWidget {
  final List<User> _items = [ //유저정보
    User("사나", age: 30, imageUrl: 'https://img.huffingtonpost.com/asset/5ceb2f97240000530085474d.jpeg?cache=cjHGUeLFMo&ops=crop_0_94_1001_722,scalefit_630_noupscale'),
    User("한석봉", age: 20),//이미지는 옵션, 없으면 기본이미지 부르기.
    User("나연", age: 50, imageUrl: 'https://dimg.donga.com/wps/NEWS/IMAGE/2020/03/03/99974590.2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    //context:
    // 앱의 위젯 트리 내부의 위치를 ​알리기 위해 위젯의 빌더에 전달 되는 인스턴스.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('내 정보'),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          TextButton(child: Text('button'), onPressed: () {}),
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
        ],
      ),
      body: _buildBody(context),
      // build의 context를 받아서 buildBody실행.
    );
  }

  Widget _buildBody(context) {
    return ListView( //listvew : child의 위젯들을 스크롤 방향으로 나열
      children: _items.map((user) {
        //map : 리스트의 값들을 함수에 적용해서 다시 리스트를 만들어낸다.
        //_items리스트의 각각 값들을 user함수에 넣어서 실행해서
        //리스트로 된 InkWell효과처리된 카카오리스트타일을 만들어낸다.
        return InkWell( //inkwell: 잉크번지는 효과
          child: KakaoListTile(user), //user로 만든 값들을 kakaoLsitTile을 스크롤방향으로 나열.
          onTap: () {
            // onTap:해당 타일을 클릭하면 화면 전환
            Navigator.push(  //Naigater는  Stack방식으로 child위젯 세트를 관리.
              context, //stack에 context를 추가한다?
              //이동할 해당Route 필요. 그냥 route 만들어서 써도되지만..
              //MaterialPageRoute : 루트 이동시 플랫폼별 애니메이션효과줌
              // 안드로이드는 위로 슬라이드, 페이드인
              // 아이폰은 오른쪽에서 와서 왼쪽으로 나감
              MaterialPageRoute(builder: (context) => UserDetailPage(user)),
             // contexts는 user값으로 만든 userdetailpage함수를 리턴한다.
             );
          },
        );
      }).toList(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_app/model/user.dart';
// import 'package:flutter_app/widget/kakao_list_tile.dart';
// import 'package:flutter_app/widget/my_list_tile.dart';
//
// class ThirdPage extends StatelessWidget {
//   final List<User> _items = [
//     User("홍길동", age: 30, imgurl: 'https://content.surfit.io/thumbs/image/KPZl5/3jXkp/8146560115f97fe723770c.jpg/cover-center-1x.webp'),
//     User("한석봉", age: 20),
//     User("이순신", age: 50,imgurl: 'https://content.surfit.io/thumbs/image/KvRDK/wJJ6E/20759320235f991749327c7.jpg/cover-center-1x.webp'),
//   ];
//
//
// //뭘누르면 옵션이 나온다고했는데 못들었다.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("내 정보"),
//         actions: [
//           IconButton(icon: Icon(Icons.info), onPressed: () {  },),
//         ],
//       ),
//       body: _buildBody()
//     );
//   }
//       // Widget _buildBody(){
//       //   List<Widget> result = [];
//       //   for (var i = 0; i < _items.length; i ++){
//       //     Uswer user = _items[i];
//       //     ListTile listTile = ListTile(title:Text(user.name));
//       //     result.add(listTile);
//       //   }
//   Widget _buildBody() {
//     return ListView(
//       children : _items.map((user) {
//         return InkWell( //inkwell누를때 퍼지는효과 제스쳐디텍터는 부분만 인식;;
//           child: KakaoListTile(user),
//           onTap: (){
//             print(user.name);
//             Navigator.push(
//               contet,
//               MaterialPageRoute(builder:(context) => UserDatailPage(user)),
//             ),
//           },
//         );//내가만든 어떤 위젯이라도 클릭이벤트를 할수있게..
//       }).toList(),
//     );
//   }
// }
//
//   //  final result = _items.map((user) => Mylisttile(user)).toList();//맵핑.이터러블,반복이가능함.
//     //result의 요소 user를 리스트타일로 바꾼다.그리고 리스트로 만든다.
//   //final은 정확히 무슨 뜻인가?



