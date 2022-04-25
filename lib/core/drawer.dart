import 'package:flutter/material.dart';
import 'package:flutter_pj/add.dart';
import 'package:flutter_pj/domain/domain.dart';
import 'package:flutter_pj/home.dart';

import '../main.dart';

class MyBotNavigation extends StatefulWidget {
  const MyBotNavigation({Key? key, required this.page}) : super(key: key);
  final String page;

  @override
  State<MyBotNavigation> createState() => _MyBotNavigationState();
}

class _MyBotNavigationState extends State<MyBotNavigation> {
  int _currentIndex = 0;
  final pages = [
    HomePage(),
    AddAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: new Icon(Icons.add), label: 'ADD'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.logout), label: 'logout'),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// class MyBotNavigation extends StatelessWidget {
//   const MyBotNavigation({Key? key, required this.page}) : super(key: key);

//   final String page;
//   // ignore: non_constant_identifier_names

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       onTap: onTapped,
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Colors.white,
//       currentIndex: PageNo[page]!,
//       items: [
//         BottomNavigationBarItem(icon: new Icon(Icons.home), label: 'home'),
//         BottomNavigationBarItem(icon: new Icon(Icons.add), label: 'ADD'),
//         BottomNavigationBarItem(icon: new Icon(Icons.logout), label: 'logout'),
//       ],
//     );
//   }
// }


// Drawer(
//       child: ListView(
//         children: <Widget>[
//           DrawerHeader(
//             child: Text(
//               'Menu',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.white),
//             ),
//             padding: const EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Color(0xFF18b6b2),
//             ),
//           ),
//           ListTile(
//             title: Text('Home'),
//             onTap: () {
//               Navigator.popAndPushNamed(context, '/');
//             },
//           ),
//           // ListTile(
//           //   title: Text('Sign in'),
//           //   onTap: () {
//           //     Navigator.popAndPushNamed(context, '/sign');
//           //   },
//           // ),
//           ListTile(
//             title: Text('Sign out'),
//             onTap: () {
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyApp()),
//                 (Route<dynamic> route) => false,
//               );
//             },
//           )
//         ],
//       ),
//     );