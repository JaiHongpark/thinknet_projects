import 'package:flutter/material.dart';
import 'login_Page.dart';

void main() {
  runApp(
    MaterialApp(
      home: BookChange(),
    )
  );
}

var Style1 = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w300
);

var Style2 = TextStyle(
    color: Colors.blue,
    fontSize: 25,
    fontWeight: FontWeight.w500
);

class BookChange extends StatelessWidget {
  const BookChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('책 바 꿀 래'),
      ),
      body: Column(
        children: [
          Image.asset('assets/book.jpg'),
          SizedBox(height: 20),
          Container(
            child: Column(
              children: [
                Text(
                  style: Style1,
                  '"새 책 구입 비용이 부담되시나요?"',
                ),
                SizedBox(height: 20),
                Text(
                  style: Style1,
                  '"갖고 있던 책을 팔아서 중고책을 구입해도\n'
                      '   추가 비용이 발생하는건 마찬가지라고요?"',
                ),
                SizedBox(height: 20),
                Text(
                  style: Style1,
                  '"도서관에서 책을 빌리면 며칠씩 기대려야 한다고요?"',
                ),
                SizedBox(height: 40),
                Text(
                  style: Style2,
                  '"이런 모든 불편함을 해결해드립니다"',
                ),
                SizedBox(height: 10),
                Text(
                  style: Style2,
                  '"책 한 권만 있으면 평생 독서가 공짜"',
                ),
                SizedBox(height: 10),
                Text(
                  style: Style2,
                  '"지금 바로 확인해 보세요"',
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (c){
                  return LoginPage();
                })
                );
              },
              child: Text('로그인')
          )
        ],
      ),
    );
  }
}

