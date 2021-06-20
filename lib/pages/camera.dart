import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.cancel_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.flash_off),
          )
        ],
      ),
      body: Center(
          child: Container(
        height: double.infinity,
        // color: Colors.white,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fspotlight.it-notes.ru%2Fwp-content%2Fuploads%2F2019%2F01%2Fd03656ba4e67d2763d0837c12f018e77.jpg&f=1&nofb=1"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          width: double.infinity,
          // alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [],
                ),
                // Icon(Icons.linear_scale_sharp),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 110,
                      width: 110,
                      // color: Colors.blue[50],
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i1.sndcdn.com/artworks-000203689035-36huow-t500x500.jpg"))),
                    ),
                    SizedBox(width: 10),
                    Container(
                        height: 110,
                        width: 110,
                        // color: Colors.blue[50],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmxhY2slMjBndXl8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80")))),
                    SizedBox(width: 10),
                    Container(
                        height: 110,
                        width: 110,
                        // color: Colors.blue[50],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/236x/79/4d/1a/794d1a5a99891575a2bff40dda0fbee2.jpg")))),
                    SizedBox(width: 10),
                    Container(
                        height: 110,
                        width: 110,
                        // color: Colors.blue[50],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/f7/1e/3e/f71e3e88ac85fc3fed5d7d8a1b0d45ad.jpg")))),
                    SizedBox(width: 10),
                    Container(
                        height: 110,
                        width: 110,
                        // color: Colors.blue[50],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://i.pinimg.com/236x/79/4d/1a/794d1a5a99891575a2bff40dda0fbee2.jpg")))),
                    SizedBox(width: 10),
                    Container(
                        height: 110,
                        width: 110,

                        // color: Colors.blue[50],
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/236x/79/4d/1a/794d1a5a99891575a2bff40dda0fbee2.jpg")))),
                    SizedBox(width: 10),
                    Container(
                      height: 110,
                      width: 110,
                      // color: Colors.blue[50],
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 110,
                      width: 110,
                      // color: Colors.blue[50],
                    ),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.image,
                      size: 40,
                      color: Colors.white,
                    ),
                    Container(
                      child: Icon(Icons.circle_outlined,
                          size: 120, color: Colors.white),
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
