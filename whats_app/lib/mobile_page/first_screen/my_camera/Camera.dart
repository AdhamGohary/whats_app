import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => CameraState();
}

class CameraState extends State<Camera> {
  File? image;
  File? video;
  final imagepicker = ImagePicker();

  Future upLoad() async {
    var pickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    var pickedVideo = await imagepicker.pickVideo(source: ImageSource.gallery);
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
    return Scaffold(
        body: Center(
          child: MaterialButton(
            splashColor: Colors.blue,
      color: Color.fromARGB(255, 13, 114, 197),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5) ),
      onPressed: () {
          upLoad();
      },
      child: Text("Gallery"),
    ),
        ));
  }
}
