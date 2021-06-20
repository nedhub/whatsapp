import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:whatsapp/pages/callpage.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/settings.dart';
import 'package:whatsapp/pages/statuspage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final tabs = [
    // StatusPage(),
    // CallPage(),
    // CameraPage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: NavBar(),
      body: tabs[pageIndex],
    );
  }
}

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pageIndex = 0;

  final tabs = [
    StatusPage(),
    CallPage(),
  ];

  @override
  Widget build(BuildContext context) {
    List iconItems = [
      Icons.circle_outlined,
      Icons.phone_sharp,
      Icons.camera_alt,
      Icons.comment_sharp,
      Icons.settings,
    ];
    List textItems = ["Status", "Calls", "Camera", "Chats", "Settings"];

    return Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[900]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Column(children: [
                    Icon(iconItems[index],
                        color: pageIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(textItems[index],
                        style: TextStyle(
                            fontSize: 10, color: Colors.white.withOpacity(0.5)))
                  ]),
                );
              })),
        ));
  }
}

// class Body extends StatefulWidget {
//   Body({Key? key}) : super(key: key);

//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   int pageIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return IndexedStack(index: pageIndex, children: [
//       StatusPage(),
//       CallPage(),
//       StatusPage(),
//       StatusPage(),
//       StatusPage(),
//     ]);
//   }
// }
