import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';

class UserDetailPage extends StatelessWidget {
  final User user;// build할떄는 값이 정해지지 않지만, app실행할때 값이 정해지고 고정되는변수

  UserDetailPage(this.user);
  //들어온 user 값으로 UserDetailPage함수실행?
  //헷갈린다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("개인정보"),
      ),
      body: Column(
        children: [
          Image.network( //url에서 이미지 받아와서 보여줌
            user.imageUrl,//url
            width: 150,
            height:150,
            fit: BoxFit.cover, //BoxFit? 영역 채우는 방식 선택
            //cover? fitWidth(너비에 맞게 채우기) fitHeight(높이에 맞게 채우기)중 상황에 맞게 선택해서 지정한 영역 채우기
          ),
          Text(user.name),//들어온유저값의 이름출력
          Text("Thirdpage에서 kakoalisttile 클릭이벤트"),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class UserDatailPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return scaffold(
//       appBar : AppBar(
//         title: Text("나영"),
//       ),
//       body : Column(
//         chlidren : [
//           Image.network(user.imageUrl,
//           width : double.infinity,
//           height:300
//           fit:BoxFit.cover,
//           ),
//           Text(user.name),
//         ],
//       )
//     );
//   }
// }
