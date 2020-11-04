import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/ui/user_photo_detail_page.dart';

class KakaoListTile extends StatelessWidget {
  final User user;

  KakaoListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(context, user);
  }

  Widget _buildItem(context, User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child:
      Container(
        color : Colors.red,
        child:
      Row(

        children: [
          GestureDetector( //row는 전체인데 왜 제스쳐가 프로필사진에서만 읽히는 걸까?
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserPhotoDetailPage(user)),
                // Row
              );
            },
            child: Hero(
              tag: user,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(user.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name, style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),
                  Text('${user.age}'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('오후 8:24'),
          ),
        ],
      ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_app/model/user.dart';
// import 'package:flutter_app/ui/user_photo_detail_page.dart';
//
// class KakaoListTile extends StatelessWidget {
//   final User user;
//   KakaoListTile(this.user);
//   @override
//   Widget build(BuildContext context) {
//     return _buildItem(user);
//   }
//   Widget _buildItem(User user){
//     return Row(
//       children: [
//         GestureDetector(
//           onTap:(){
//             Navigator.Push(
//               context,
//               MaterialPageRoute(builder:(context)=> UserDatailPage(user)),);},
//             child: Hero(
//               tag:user, //유니크하도록
//               child: ClipRRect(
//                 borderRadius:BorderRadius.circular(20.0),
//               child: Image.network('https://content.surfit.io/thumbs/image/KPZl5/3jXkp/8146560115f97fe723770c.jpg/cover-center-1x.webp',
//               width:100,
//               height:100,
//               fit: BoxFit.cover,
//           ),
//       ),
//             ),
//         ),
//       Expanded(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:[
//           Text(user.name, style:TextStyle(fontWeight:FontWeight.bold,
//           fontSize :20)),
//           Text('${user.age}'),
//         ],),
//       ),
//         Text("오후 8:24")
//       ],
//
//     );
//   }
// }
