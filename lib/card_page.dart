import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('두 번째 화면'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors. white,
          child: Column()
        ),
      ),
    );
  }
}
