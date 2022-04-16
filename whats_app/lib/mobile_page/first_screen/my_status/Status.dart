import 'package:flutter/material.dart';
import 'package:whats_app/mobile_page/first_screen/my_status/ContentOfStatus.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Status extends StatefulWidget {
  Status({
    Key? key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return StatusState();
  }
}

class StatusState extends State<Status> {
  File? image;
  File? video;
  final imagepicker = ImagePicker();
  Future upLoad() async {
    var pickedImage = await imagepicker.pickImage(source: ImageSource.camera);
    var pickedVideo = await imagepicker.pickVideo(source: ImageSource.camera);
    setState(() {
      if (pickedImage != null) {
        image = File(pickedImage.path);
      } else {}
      if (pickedVideo != null) {
        video = File(pickedVideo.path);
      } else {}
    });
  }

  List<Map> myStatus = [
    {
      'name': "Ahmed",
      "images": "myimages/1.jpg",
      'time_of_download': '6 minuts ago',
    },
    {
      'name': "Ali",
      "images": "myimages/2.jpg",
      'time_of_download': '25 minuts ago',
    },
    {
      'name': "Abo Nasser",
      "images": "myimages/2.jpg",
      'time_of_download': '8 minuts ago',
    },
    {
      'name': "Agina",
      "images": "myimages/5.jpg",
      'time_of_download': '20 minuts ago',
    },
    {
      'name': "Ahmed",
      "images": "myimages/1.jpg",
      'time_of_download': '6 minuts ago',
    },
    {
      'name': "Ali",
      "images": "myimages/2.jpg",
      'time_of_download': '25 minuts ago',
    },
    {
      'name': "Abo Nasser",
      "images": "myimages/2.jpg",
      'time_of_download': '8 minuts ago',
    },
    {
      'name': "Agina",
      "images": "myimages/5.jpg",
      'time_of_download': '20 minuts ago',
    },
  ];
  String unimportant = "";
  List<Map> unImportant = [];
  List<Map> watched = [];
  String watch = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "MyWriteStatus",
            splashColor: Colors.blue,
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: IconButton(
              icon: Icon(Icons.draw_sharp, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pushNamed("MyWriteStatus");
              },
            ),
          ),
          SizedBox(
            child: Divider(),
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "Camera",
            splashColor: Colors.blue,
            backgroundColor: Colors.green,
            onPressed: () {},
            child: IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () {
                upLoad();
              },
            ),
          ),
        ],
      ),
      body: ListView(children: [
        ListTile(
          onTap: () {
            upLoad();
            image != null ? Image.asset("$image") : {};
            /*Navigator.of(context).pushNamed("ContentOfMyStatus");*/
          },
          onLongPress: () {},
          title: Text("My Status"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("${myStatus[1]['images']}"),
          ),
          subtitle: Text("click to add status"),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 2),
          child: Text(
            "new Status",
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: myStatus.length,
          itemBuilder: (context, i) {
            return ListTile(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                            "Status from ${myStatus[i]["name"]} is not interested?"),
                        content: Text(
                            "Updates of new status from ${myStatus[i]["name"]} is not show"),
                        actionsPadding: EdgeInsets.all(15),
                        actions: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 30,
                            child: InkWell(
                              focusColor: Colors.blue,
                              splashColor: Colors.red,
                              child: Text("Is not interest"),
                              onTap: () {
                                unimportant = "Status isn't important";
                                setState(() {
                                  unImportant.insert(0, {
                                    "name": myStatus[i]["name"],
                                    "images": myStatus[i]["images"],
                                    "time_of_download": myStatus[i]
                                        ["time_of_download"]
                                  });

                                  myStatus.removeAt(i);
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 30,
                            child: InkWell(
                              splashColor: Colors.red,
                              focusColor: Colors.blue,
                              child: Text("Cancel"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      );
                    });
              },
              onTap: () {
                 Navigator.of(context).pushNamed("ContentOfStatus");
                setState(() {
                  //this.myContentStatus=myStatus[i]['images'];
                 watch = "Status is watched";
                  watched.insert(0, {
                    "name": myStatus[i]["name"],
                    "time_of_download": myStatus[i]["time_of_download"],
                    "images": myStatus[i]["images"]
                  });
                  myStatus.removeAt(i);
                });
              },
              selectedTileColor: Colors.red,
              title: Text(
                "${myStatus[i]["name"]}",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text("${myStatus[i]['time_of_download']}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("${myStatus[i]['images']}"),
                maxRadius: 20,
              ),
            );
          },
        ),
        Text(watch,
            style: TextStyle(
              color: Colors.white,
            )),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: watched.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${watched[i]["name"]}"),
              subtitle: Text("${watched[i]['time_of_download']}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("${watched[i]['images']}"),
                maxRadius: 20,
              ),
              onTap: () {},
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                            "Status from ${watched[i]["name"]} is not interested?"),
                        content: Text(
                            "Updates of new status from ${watched[i]["name"]} is not show"),
                        actions: [
                          Container(
                             height: 30,
                             margin: EdgeInsets.only(right: 15),
                            child: InkWell(
                              splashColor: Colors.green,
                              child: Text("isn't important"),
                              onTap: () {
                                setState(() {
                                  unimportant = "Status isn't important";
                                  unImportant.insert(0, {
                                    "name": watched[i]["name"],
                                    "images": watched[i]["images"],
                                    "time_of_download": watched[i]
                                        ["time_of_download"],
                                  });
                                  watched.removeAt(i);
                                  Navigator.of(context).pop();
                                });
                              },
                            ),
                          ),
                          Container(
                             height: 30,
                             margin: EdgeInsets.only(left: 15),
                            child: InkWell(
                              splashColor: Colors.green,
                              child: Text("cancel"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )
                        ],
                      );
                    });
              },
            );
          },
        ),
        Text(unimportant,
            style: TextStyle(
              color: Colors.white,
            )),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: unImportant.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${unImportant[i]["name"]}"),
              subtitle: Text("${unImportant[i]['time_of_download']}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage("${unImportant[i]['images']}"),
                maxRadius: 20,
              ),
              onTap: () {},
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                            "status of ${unImportant[i]["name"]} is important?"),
                        content: Text(
                            "New status of ${unImportant[i]["name"]} will show under new status"),
                        actions: [
                          Container(
                             height: 30,
                             margin: EdgeInsets.only(left: 15),
                            child: InkWell(
                              splashColor: Colors.orange,
                              child: Text("important"),
                              onDoubleTap: () {
                                setState(() {
                                  Navigator.of(context).pop();
                                  myStatus.add({
                                    "name": unImportant[i]["name"],
                                    "time_of_download": unImportant[i]
                                        ["time_of_download"],
                                    "images": unImportant[i]["images"],
                                  });
                                  unImportant.removeAt(i);
                                });
                              },
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pop();
                                  watched.insert(0, {
                                    "name": unImportant[i]["name"],
                                    "time_of_download": unImportant[i]
                                        ["time_of_download"],
                                    "images": unImportant[i]["images"]
                                  });
                                  unImportant.removeAt(i);
                                });
                              },
                            ),
                          ),
                          Container(
                             height: 30,
                             margin: EdgeInsets.only(left: 15),
                            child: InkWell(
                              splashColor: Colors.orange,
                              child: Text("cancel"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      );
                    });
              },
            );
          },
        ),
      ]),
    );
  }
}
