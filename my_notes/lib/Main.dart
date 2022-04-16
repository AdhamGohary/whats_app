
import 'package:flutter/material.dart';
import 'package:my_notes/Responsive.dart';
import 'package:my_notes/mobile_page/first_screen/FirstScreen.dart';

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
        theme: ThemeData(brightness: Brightness.dark));
  }
}
