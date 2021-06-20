import 'package:flutter/material.dart';
import 'package:whatsapp/json/chatdata.dart';

class CallPage extends StatefulWidget {
  CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Text(
              "Edit",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[100],
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.call, color: Colors.grey[100]),
              onPressed: () {},
            )
          ],
          title: Container(
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu = 0;
                      });
                    },
                    child: Container(
                        width: 75,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: activeMenu == 0
                              ? Colors.white.withOpacity(0.9)
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text("All", style: TextStyle(fontSize: 13)),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu = 1;
                      });
                    },
                    child: Container(
                        width: 75,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: activeMenu == 1
                              ? Colors.white.withOpacity(0.9)
                              : Colors.white.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Text("Missed", style: TextStyle(fontSize: 13)),
                        )),
                  )
                ]),
              ))),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Calls",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Container(
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.grey[300],
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white12.withOpacity(0.4),
                    ),
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.white12.withOpacity(0.4),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Icon(Icons.video_call,
                        color: Colors.grey[100], size: 28),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Create a Room",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[100],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 5, left: 5),
          child: Divider(
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        activeMenu == 0 ? getAll() : getMissed()
      ]),
    );
  }

  Widget getAll() {
    var size = MediaQuery.of(context).size;
    return Column(
        children: List.generate(chat_data.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: (size.width - 30) * 0.75,
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(chat_data[index]['img']),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 10),
                      Container(
                          width: (size.width - 85) * 0.7,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(chat_data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(children: [
                                  Icon(Icons.call,
                                      size: 17,
                                      color: Colors.white.withOpacity(0.5)),
                                  SizedBox(width: 3),
                                  Text(
                                    "Incoming",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  )
                                ])
                              ]))
                    ],
                  ),
                ),
                Container(
                  width: (size.width - 30) * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat_data[index]['date'],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      Icon(Icons.info_outline,
                          color: Colors.lightBlue, size: 20)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ],
        ),
      );
    }));
  }

  Widget getMissed() {
    var size = MediaQuery.of(context).size;
    return Column(
        children: List.generate(chat_data.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: (size.width - 30) * 0.75,
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(chat_data[index]['img']),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 10),
                      Container(
                          width: (size.width - 85) * 0.7,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(chat_data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(children: [
                                  Icon(Icons.call,
                                      size: 17,
                                      color: Colors.white.withOpacity(0.5)),
                                  SizedBox(width: 3),
                                  Text(
                                    "Missed",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red.withOpacity(0.5),
                                        fontWeight: FontWeight.w400),
                                  )
                                ])
                              ]))
                    ],
                  ),
                ),
                Container(
                  width: (size.width - 30) * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat_data[index]['date'],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      Icon(Icons.info_outline,
                          color: Colors.lightBlue, size: 20)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ],
        ),
      );
    }));
  }
}
