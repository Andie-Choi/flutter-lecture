import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("이용 서비스"),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          TextButton(onPressed: () {}, child: Text("menu")),
        ], //메뉴들 . 리스트위젯. 아무거나들어간다는뜻
      ),
       body:
       GridView.count(
         padding: const EdgeInsets.all(5.0),
         mainAxisSpacing: 5.0,
         crossAxisSpacing: 10.0,
         crossAxisCount: 2,
         children: <Widget>[
            Column(children: [      Image.asset('images/p1.jpg', fit: BoxFit.fill),
              Text("타이틀타이틀타이틀"),],),
           Column(children: [      Image.asset('images/p2.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p3.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p4.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p5.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p6.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p7.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
           Column(children: [      Image.asset('images/p8.jpg', fit: BoxFit.fill),
             Text("제목제목제목"),],),
         ],
       ),
    );
  }
}
