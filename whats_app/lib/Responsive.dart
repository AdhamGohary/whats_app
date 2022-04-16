import 'package:flutter/material.dart';
import 'package:whats_app/mobile_page/MobilePage.dart';
import 'package:whats_app/web_page/WebPage.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>=600){
        return WebPage();
      }
      else{
        print(constraints.maxWidth);
        print(constraints.maxHeight);
        return MobilePage();
      }
    });
  }
}
