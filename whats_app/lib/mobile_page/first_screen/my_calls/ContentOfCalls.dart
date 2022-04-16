import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whats_app/mobile_page/first_screen/my_calls/Calls.dart';

class ContentOfCalls extends StatelessWidget {
  ContentOfCalls({Key? key}) : super(key: key);
  List myCalls = [
    {
      "name": "leoooo",
      // "icon": Icon(Icons.call),
      "time_of_download": "yestarday",
      "images": "myimages/1.jpg"
    },
    {
      "name": "sabahy",
      // "icon": Icon(Icons.call),
      "time_of_download": "25/2/2021",
      "images": "myimages/2.jpg"
    },
    {
      "name": "fathi",
      // "icon": Icon(Icons.call),
      "time_of_download": "29/8/2020",
      "images": "myimages/5.jpg"
    },
    {
      "name": "osama",
      // "icon": Icon(Icons.call),
      "time_of_download": "today",
      "images": "myimages/2.jpg"
    },
    {
      "name": "ahmed tarek",
      // "icon": Icon(Icons.call),
      "time_of_download": "20/9/2021",
      "images": "myimages/1.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              child: Image.asset("${myCalls[0]['images']}"),
              maxRadius: 50,
            ),
            Text(
              "Adham",
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "connect",
              style: TextStyle(fontSize: 50),
            ),
           Spacer(),
            Stack(children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10))
                        
                        ),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_upward_sharp)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                                minRadius: 50,
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.call_end,
                                ))),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                                backgroundColor: Colors.grey,
                                minRadius: 50,
                                child: Icon(Icons.mic_off))),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                                backgroundColor: Colors.grey,
                                minRadius: 50,
                                child: Icon(
                                  Icons.video_call_rounded,
                                ))),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                                backgroundColor: Colors.grey,
                                minRadius: 50,
                                child: Icon(
                                  Icons.earbuds,
                                ))),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
