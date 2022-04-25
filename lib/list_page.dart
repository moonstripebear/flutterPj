import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pj/domain/domain.dart';
import 'repository/authentication.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'signup.dart';
import 'package:flutter_pj/core/drawer.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // return Container(child:Text(''));
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(40, 38, 56, 1),
      body: Center(
        child: Container(
            // width: 570,
            // padding: EdgeInsets.all(20),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Accounts('TEST1'),
            Accounts('TEST2'),
            Accounts('TEST3'),
          ],
        )),
      ),
    );
  }
}

class Accounts extends StatelessWidget {
  // const Accounts({Key? key}) : super(key: key);

  final String title;
  const Accounts(this.title);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFFFF355d5c),
        border:
            Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFFe5fbef))),
      ),
      child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 414,
          height: 80,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  width: 414,
                  height: 30,
                  child: Row(
                    children: [
                      Container(
                        width: 185,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '付錢人',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '123',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )),
            ],
          )),
    );
  }
}
