import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar( title: Text('앱임')), //상단에 들어갈 위젯
          body: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly, // 가로축 가운데 정렬
            children : [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ]
          ),// Column : 세로로배열 , Row: 가로로배열
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 70, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            )
          ), // 하단에 들어갈 위젯
      )// 상중하로 나눠주는 위젯
      // 내 자식 위젯의 기준점을 중앙으로 설정해주는 Center()
      //Center(child: Container(width: 50, height: 50, color: Colors.blue)) 
      // Container(width: 5, height: 5, color: Colors.blue) // 네모박스

      // 이미지 위젯
      // Image.asset('miu.gif') 
      // 1.이미지가 프로젝트 폴더 안에 존재해야함 폴더에 이미지를 넣고
      // 2.이미지를 쓴다고 등록해야함 pubspec.yaml파일 -> 앱만들때 필요한 모든 자료를 정리한 파일 
      // 중간쯤에 flutter: 가 보임

      // Icon(Icons.star) 아이콘 위젯 
      // Text('안녕') // 글자 위젯
    ); //커스터 마이징하고 싶을때는 MaterialApp()을 써야함 
  }
}
