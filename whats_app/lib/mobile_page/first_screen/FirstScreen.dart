import 'dart:io';
import 'package:flutter/material.dart';
import 'package:whats_app/mobile_page/first_screen/my_calls/Calls.dart';
import 'package:whats_app/mobile_page/first_screen/my_camera/Camera.dart';
import 'package:whats_app/mobile_page/first_screen/my_chats/Chats.dart';
import 'package:whats_app/mobile_page/first_screen/my_status/Status.dart';
import 'package:image_picker/image_picker.dart';
import 'my_chats/My_Connection_Data.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {
              showSearch(context: context, delegate: My_Connetion_Data(),);
            }),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("WhatsApp"),
            ],
          ),
          backgroundColor: Colors.grey,
          bottom: TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 5,
            tabs: [
              Tab(
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    upLoad();
                  },
                ),
              ),
              Tab(child: Text("chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
