import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'repository/authentication.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'signup.dart';
import 'package:flutter_pj/core/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  // String userid = "";
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(40, 38, 56, 1),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFF18b6b2),
      ),
      drawer: MyDrawer(),
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
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Center(
      //       child: Container(
      //           height: 400,
      //           width: 200,
      //           padding: EdgeInsets.all(20),
      //           alignment: Alignment.center,
      //           child: Text(
      //             "Successfull login!",
      //             textAlign: TextAlign.center,
      //             style: TextStyle(color: Colors.white, fontSize: 25),
      //           )),
      //     ),
      //     Container(
      //       height: 100,
      //       width: 570,
      //       padding: EdgeInsets.all(20),
      //       child: RaisedButton(
      //           color: Colors.pink,
      //           child: Text("Logout", style: TextStyle(color: Colors.white)),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(30)),
      //           onPressed: () {
      //             Navigator.pushAndRemoveUntil(
      //               context,
      //               MaterialPageRoute(builder: (context) => MyApp()),
      //               (Route<dynamic> route) => false,
      //             );
      //           }),
      //     )
      //   ],
      // )
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
        height: 100,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
