import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class list_exam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = <String>["1","2","3","4","5","6","7","8","9","10","11"];
    return Scaffold(
      //list_exam을 오픈하면 Scaffold가 Build된다.
      appBar: AppBar(title: Text("title_list_exam")),
      //title text가 들어 있는 appbar 생성
      body: ListView.separated(
        //builder는 그냥 기본 리스트, separated는 구분선이 있는 리스트생성
        padding: const EdgeInsets.all(10), //전체여백주기
        itemCount: items.length, //items갯수를 리스트뷰에 알려줘서, 그 갯수만큼 itembuilder가 실행됨.
        itemBuilder: (BuildContext context, int index) {
          //index개수만큼 context(Listtile)를 만들기
          return ListTile(
              //listtile : 리스트만들때 적당한 기본 디자인. height 설정 안 해줘도 됨.
              title: Center(child: Text('${items[index]}')),
              // items리스트의 index인덱스에 해당되는 원소 출력
              subtitle:
                  Center(child: Text("subtitle"))); //title 밑에 subtitle 출력;
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        //하나의 item 만들어지면 바로 밑에 context(구분선)도 생성. index만큼 반복..?
        // => Divider()라는 위젯을 return, use이라는 뜻?
        // Container(
      ),
    );
  }
}
