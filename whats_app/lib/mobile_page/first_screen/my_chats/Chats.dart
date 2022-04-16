import 'package:flutter/material.dart';
import 'package:whats_app/mobile_page/first_screen/my_calls/ContentOfCalls.dart';
import 'package:whats_app/mobile_page/first_screen/my_chats/ContentOfChat.dart';

class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);
  List myPerson = [
    {
      "name": 'hema',
      "numOfMsg": '1',
      "contentOfMsg": "hello my bro ",
      "images": "myimages/2.jpg",
    },
    {
      "name": 'ADHAM',
      "numOfMsg": '1',
      "contentOfMsg": "hello",
      "images": "myimages/1.jpg",
    },
    {
      "name": 'body',
      "numOfMsg": '1',
      "contentOfMsg": "you are my best friend , hhhhhhhhhhhhhhhhhhhhh",
      "images": "myimages/5.jpg",
    },
    {
      "name": 'saad',
      "numOfMsg": '5',
      "contentOfMsg": "bye",
      "images": "myimages/5.jpg",
    },
    {
      "name": 'yasser',
      "numOfMsg": '8',
      "contentOfMsg": "let's go",
      "images": "myimages/5.jpg",
    },
    {
      "name": 'ADHAM',
      "numOfMsg": '1',
      "contentOfMsg": "hello",
      "images": "myimages/1.jpg",
    },
    {
      "name": 'ADHAM',
      "numOfMsg": '1',
      "contentOfMsg": "hello",
      "images": "myimages/1.jpg",
    },
    {
      "name": 'ADHAM',
      "numOfMsg": '1',
      "contentOfMsg": "hello",
      "images": "myimages/1.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return //chat_page
        Scaffold(
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        backgroundColor: Colors.green,
        onPressed: () {},
        child: IconButton(
          icon: Icon(Icons.message),
          onPressed: () {
            Navigator.of(context).pushNamed("MyConnection");
          },
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: myPerson.length,
        itemBuilder: (context, i) {
          return ListTile(
            hoverColor: Colors.red,
            onTap: () {
              
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ContentOfChat(imageUrl:myPerson[i]['images'].toString());
              }));
            },
            selectedColor: Colors.white,
            title: Text(
              "${myPerson[i]["name"]}",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              "${myPerson[i]["contentOfMsg"]}",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.start,
            ),
            trailing: CircleAvatar(
              child: Text("${myPerson[i]["numOfMsg"]}"),
              backgroundColor: Colors.greenAccent,
              minRadius: 5,
              maxRadius: 10,
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage("${myPerson[i]['images']}"),
             
              maxRadius: 20,
              
            ),
          );
        },
      ),
    );
  }
}

