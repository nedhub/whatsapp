import 'package:flutter/material.dart';
import 'package:whatsapp/json/chatdata.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                "Privacy",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text("Status",
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
                      )),
                ),
              )
            ]),
          ),
          SizedBox(height: 50),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey[900]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profile[0]['img']),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                  child: Center(
                                    child: Icon(Icons.add,
                                        color: Colors.white, size: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Status",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Add to my status",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                          ])
                    ],
                  ),
                  Row(children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle),
                      child: Center(
                        child:
                            Icon(Icons.camera, color: Colors.white, size: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(Icons.edit, color: Colors.white, size: 20),
                      ),
                    )
                  ])
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[900]),
              child: Center(
                child: Text("No recent updates to show right now",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.4),
                        fontWeight: FontWeight.w400)),
              ))
        ]));
  }
}
