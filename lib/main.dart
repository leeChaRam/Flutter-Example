import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Center(
        child: Container(width: 50, height: 50, color: Colors.blue)

      ) // 자식위젯의 시작을 정 중앙에 넣겠다.
      // Container(width: 5, height: 5, color: Colors.blue) // 네모박스

      // 이미지 위젯
      // Image.asset('miu.gif') 
      // 1.이미지가 프로젝트 폴더 안에 존재해야함 폴더에 이미지를 넣고
      // 2.이미지를 쓴다고 등록해야함 pubspec.yaml파일 -> 앱만들때 필요한 모든 자료를 정리한 파일 
      // 중간쯤에 flutter: 가 보임

      // Icon(Icons.star) 아이콘 위젯 
      // Text('안녕') // 글자 위젯
    );
  }
}
