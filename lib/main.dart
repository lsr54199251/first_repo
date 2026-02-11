import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Widget 복습 화면'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '📚 Text & TextStyle 복습',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),

              Text(
                '일반 텍스트입니다',
                style: TextStyle(fontSize: 16),
              ),

              Text(
                '굵은 텍스트 (bold)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '기울임 텍스트 (italic)',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),

              Text(
                '밑줄 텍스트 (underline)',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),

              Text(
                '색상 + 크기 변경',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 24),
              Text(
                '📦 Container & BoxDecoration 복습',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12),

              // 기본 Container
              Container(
                width: 200,
                height: 60,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    '기본 Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 12),

              // BoxDecoration 사용 (둥근 모서리 + 테두리)
              // ⚠️ color와 decoration 동시 사용 불가!
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '둥근 모서리 + 테두리',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 12),

              // 그림자가 있는 Container
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '그림자 효과',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                '↔️ Row 복습 (가로 배치)',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12),

              // Row 기본 사용
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '빨강',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        '초록',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        '파랑',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                '🔀 Column + Row 중첩',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12),

              // Column 안에 Row 넣기
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      '위에 있는 글자',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.blue),
                        SizedBox(width: 20),
                        Text('왼쪽'),
                        SizedBox(width: 40),
                        Text('오른쪽'),
                        SizedBox(width: 20),
                        Icon(Icons.arrow_forward, color: Colors.blue),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      '아래에 있는 글자',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
