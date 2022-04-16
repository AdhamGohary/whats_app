import 'package:flutter/material.dart';

class MyConnection extends StatelessWidget {
  MyConnection({Key? key}) : super(key: key);
  List myContact = [
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
    {
      "name": "Bassel",
      "images": "myimages/1.jpg",
      "bio": "don't believe",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            Text("Select Contact"),
          ],
        ),
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
      body: ListView(
        // shrinkWrap: true,
        children: [
          ListTile(
            onTap: () {},
            title: Text("New Group"),
            leading: CircleAvatar(
              child: Icon(Icons.person_add_alt_1),
              backgroundColor: Colors.greenAccent,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("SignNewContact");
            },
            title: Text("New Contact"),
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Icon(Icons.person_add),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).popAndPushNamed("ContentOfChat");
                },
                title: Text("${myContact[i]["name"]}"),
                subtitle: Text("${myContact[i]['bio']}"),
                leading: CircleAvatar(
                  child: Image.asset("${myContact[i]['images']}"),
                ),
              );
            },
            itemCount: myContact.length,
          )
        ],
      ),
    );
  }
}
