import 'package:flutter/material.dart';
import 'Chats.dart';

class ContentOfChat extends StatelessWidget {
  ContentOfChat({Key? key, required imageUrl}) : super(key: key);
  String? imageUrl;
  var msg;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey();
    send() {
      var formdata = formstate.currentState;
      formdata!.save();
      print(msg);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('$imageUrl'),
            maxRadius: 20,
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Divider(),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextFormField(
                onSaved: (value) {
                  send();
                  
                },
                cursorHeight: 50,
                textInputAction: TextInputAction.send,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(),
                    hintText: "message",
                    hintTextDirection: TextDirection.rtl,
                    prefixIcon: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.emoji_emotions))),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.mic,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
