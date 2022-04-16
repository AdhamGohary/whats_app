
import 'package:flutter/material.dart';
import 'package:whats_app/Responsive.dart';
import 'package:whats_app/mobile_page/first_screen/FirstScreen.dart';
import 'package:whats_app/mobile_page/first_screen/my_chats/ContentOfChat.dart';
import 'package:whats_app/mobile_page/first_screen/my_status/ContentOfStatus.dart';
import 'package:whats_app/mobile_page/first_screen/my_status/MyWriteStatus.dart';

import 'mobile_page/first_screen/my_calls/ContentOfCalls.dart';
import 'mobile_page/first_screen/my_chats/MyConnection.dart';
import 'mobile_page/first_screen/my_chats/SignNewContact.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Responsive(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        routes: {"ContentOfStatus":(context)=>ContentOfStatus(),
        "MyWriteStatus":(context) => MyWriteStatus(),
        
        "MyConnection":(context) => MyConnection(),
        "SignNewContact":(context) => SignNewContact(),
        "ContentOfCalls":(context) => ContentOfCalls(),
       
        },
        );
        
  }
}
