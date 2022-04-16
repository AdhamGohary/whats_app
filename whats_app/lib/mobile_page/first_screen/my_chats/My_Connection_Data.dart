import 'package:flutter/material.dart';
class My_Connetion_Data extends SearchDelegate{
    List myPerson=[
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
   

  Widget buildLeading(BuildContext context){
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));

  }
  List<Widget> buildActions(BuildContext context){
    return[
     
      IconButton(onPressed: (){query="";}, icon: Icon(Icons.cancel))

    ];

  }
  Widget buildSuggestions(BuildContext context){
    //List filterNames=myPerson.where((element) =>element.startsWith(query)).toList();

      return ListView.builder(
       itemCount: myPerson.length,
      itemBuilder: (context,i){
        return ListTile(hoverColor: Colors.red,
            onTap: () {
              
              Navigator.of(context).pushNamed("ContentOfChat");
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
              //child:
             // Image.asset("${myPerson[i]['images']}"),
              maxRadius: 20,
              //minRadius: 15,
            ));

          }) ;

  }
  Widget buildResults( BuildContext context){
    return Text("a");
   }
}
