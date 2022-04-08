// import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WHAT THE FUCK'),
        ),
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextField(
            controller: textController,
            decoration: InputDecoration(hintText: '請輸入帳號'),
          ),
          ElevatedButton(
              child: Text('印出'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BPage()));
              })
        ],
      ),
    );
  }
}

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是 B 頁'),
      ),
      body: _BPage(),
    );
  }
}

class _BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('返回首頁'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.deepOrangeAccent,
          child: Text('1', style: TextStyle(fontSize: 100)),
        ),
        Container(
          color: Colors.amber,
          child: Text('2', style: TextStyle(fontSize: 120)),
        ),
        Container(
          color: Colors.red,
          child: Text('3', style: TextStyle(fontSize: 100)),
        )
      ],
    );
  }
}
