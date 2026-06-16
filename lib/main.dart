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
        appBar: AppBar( actions  : [Icon(Icons.star), Icon(Icons.star)], title: Text('dd')),
        body: Container(
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,// Row 안의 자식들이 세로로 꽉 차게(높이가 같게) 만듬 
            children: [
              Expanded(
                flex: 4,
                child: Image.asset('mango.jpg',fit: BoxFit.cover),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white,
                        padding : EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Text(
                            '캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            )
                          )
                          
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        padding : EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Text(
                            '성동구 행당동 끌올 10분 전',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            )
                          )
                          
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        padding : EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '210,000원',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal:16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite, 
                              color: Colors.grey,
                            ),
                            SizedBox(width:4), // 아이콘과 숫자 사이의 미세한 간격 
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ],
                        )
                      ),
                    ),
                  ],
                  )
              ),
              
              ],
          ),
        )
      )
      
       // 하단에 들어갈 위젯
      );// 상중하로 나눠주는 위젯
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
      //커스터 마이징하고 싶을때는 MaterialApp()을 써야함 
  }
}
