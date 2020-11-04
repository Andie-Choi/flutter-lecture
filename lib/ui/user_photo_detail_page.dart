import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';

class UserPhotoDetailPage extends StatelessWidget {
  final User user;

  UserPhotoDetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('개인 정보'),
      ),
      body: Column(
        children: [
          Hero(
            tag: user,
            child: Image.network(
              user.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(user.name),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_app/model/user.dart';
//
// class UserDatailPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar : AppBar(
//           title: Text("나영"),
//         ),
//         body : Column(
//           children : [
//             Hero(
//               tag:user,
//               child: Image.network(user.imageUrl,
//                 width : double.infinity,
//                 height:300,
//                 fit:BoxFit.cover,
//               ),
//             ),
//             Text(user.name),
//           ],
//         )
//     );
//   }
// }
