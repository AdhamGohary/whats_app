import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Calls extends StatefulWidget {
  Column? calcol;

  Calls({
    Key? key,
  }) : super(key: key);

  @override
  State<Calls> createState() => CallsState();
}

class CallsState extends State<Calls> {
  List myCalls = [
    {
      "name": "leoooo",
      "time_of_download": "yestarday",
      "images": "myimages/1.jpg"
    },
    {
      "name": "sabahy",
      "time_of_download": "25/2/2021",
      "images": "myimages/2.jpg"
    },
    {
      "name": "fathi",
      "time_of_download": "29/8/2020",
      "images": "myimages/5.jpg"
    },
    {"name": "osama", "time_of_download": "today", "images": "myimages/2.jpg"},
    {
      "name": "ahmed tarek",
      "time_of_download": "20/9/2021",
      "images": "myimages/1.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
          splashColor: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushNamed("MyConnection");
          },
          child: IconButton(
              splashColor: Colors.blue,
              icon: Icon(
                Icons.add_call,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("MyConnection");
              })),
      body: ListView.builder(
          itemCount: myCalls.length,
          itemBuilder: (context, i) {
            return ListTile(
                onLongPress: () {},
                onTap: () {},
                title: Text("${myCalls[i]["name"]}"),
                subtitle: Text("${myCalls[i]["time_of_download"]}"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("${myCalls[0]["images"]}")),
                trailing: CircleAvatar(
                  child: IconButton(
                      splashColor: Colors.blue,
                      onPressed: () {
                        Navigator.of(context).pushNamed("ContentOfCalls");
                      },
                      icon: Icon(Icons.call)),
                ));
          }),
    );
  }
}
