import 'dart:ui';

import 'package:flutter/material.dart';

class SignNewContact extends StatelessWidget {
  const SignNewContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Text("Save to your phone")),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.cancel),
              color: Colors.black,
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.assignment_turned_in_rounded),
          onPressed: () {},
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            cursorHeight: 30,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              filled: true,
              hintText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          Divider(),
          TextFormField(
            keyboardType: TextInputType.number,
            cursorHeight: 30,
            decoration: InputDecoration(
              hintText: "Number",
              border: OutlineInputBorder(),
            filled: true,),
          ),
        ],
      ),
    );
  }
}
