import 'package:flutter/material.dart';

import 'package:whats_app/mobile_page/first_screen/my_status/Status.dart';
class ContentOfStatus extends StatelessWidget {
 
 ContentOfStatus({Key? key}) : super(key: key);
 List myContentStatus=StatusState().myStatus;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("${myContentStatus[0]["images"]}",fit: BoxFit.fitHeight),
    );
  }
}