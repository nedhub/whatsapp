import 'package:flutter/material.dart';
import 'package:whatsapp/json/chatdata.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Settings",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              profile[0]['name'],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Busy",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.3,
                                fontWeight: FontWeight.w300,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(children: [
                      Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(Icons.qr_code,
                                  size: 20, color: Colors.grey[900]))),
                    ])
                  ],
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(
              setting_section_one.length,
              (index) {
                return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    // color: Colors.grey[900],
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: setting_section_one[index]
                                            ['color']),

                                    child: Center(
                                      child: Icon(
                                        setting_section_one[0]['icon'],
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    setting_section_one[index]['text'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.black.withOpacity(0.2),
                                  size: 15)
                            ],
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
