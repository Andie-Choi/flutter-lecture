import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';

class MyListTile extends StatelessWidget {
  final User user;
  MyListTile(this.user);

  @override
  Widget build(BuildContext context) {
    return _buildItem(user);
  }
  Widget _buildItem(User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [ //Card() 카드형태로만든다~
            Image.network('https://content.surfit.io/thumbs/image/KPZl5/3jXkp/8146560115f97fe723770c.jpg/cover-center-1x.webp', width: double.infinity,
              height : 300,
              fit : BoxFit.cover,
            ),
            Row(
              children: [
                Text("user.name"),
                Text('${user.age}'),
              ],
            )
          ],
        ),
      ),
    );
    ListTile(title:Text(user.name));
  }
}
//컨트롤이 하면 최근 파일 갈수있음