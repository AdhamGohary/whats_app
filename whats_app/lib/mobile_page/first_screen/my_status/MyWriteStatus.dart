import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWriteStatus extends StatelessWidget {
  const MyWriteStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 202, 29),
      body: Center(
        child: SizedBox(
          width: 300,
          child: TextFormField(
            maxLines: 13,
            minLines: 1,
            textInputAction: TextInputAction.go,
            style: TextStyle(fontSize: 50),
            decoration: InputDecoration(
              hintText: "Write the status",
              hintStyle: TextStyle(
                fontSize: 40,
        
              ),
              
              border: InputBorder.none,
            ),
            cursorColor: Colors.white,
            cursorHeight: 50,
          ),
        ),
      ),
    );
  }
}
