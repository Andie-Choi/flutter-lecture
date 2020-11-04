import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Instagram"),
        ),
      ),
      body : Center(
        child: Column(
          children: [
            Text("Instagram에 오신 것을 환영합니다"),
            Text("사진과 동영상을 보려면 팔로우하세요."),

            Card(
              // width:,
              // height:,
              child : Center(
                child:Column(
                  children : [
                    //동그란플필
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset("images/1.gif",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("test@test.com"),
                    Text("Siwan lim"),
                    //네모사진 세개
                    Center(
                      child: Row(
                        children: [
                          Image.asset("images/p1.jpg",
                          width:80,
                          height :80,
                          fit: BoxFit.cover,
                          ),
                          Image.asset("images/p2.jpg",
                            width:80,
                            height :80,
                            fit: BoxFit.cover,
                          ),
                          Image.asset("images/p3.jpg",
                            width:80,
                            height :80,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Text("Facebook 친구"),
                    ElevatedButton(onPressed: (){}, child: Text("팔로우"))
                ],
                ),
              ),

            ),
          ],
        ),),
    );
  }
}
