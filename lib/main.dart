import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
    );
  }
}



class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: allMsg.length,
      itemBuilder: (context, index){
        return ListTile(
          leading:  Container(  
            width: 40,
            height: 40,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage(allMsg[index].avatar),
            fit: BoxFit.cover
            )
          ),
        ),
          title: Text(allMsg[index].username),
          subtitle: Text(allMsg[index].text),
        );
      },)     
    );
  }
}


class Avatars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(  decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage("https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg"),
            fit: BoxFit.cover
            )
          ),
        );
  }
}


class Message{
  String text;
  String username;
  String avatar;
  Message({this.avatar, this.text, this.username}); 
}

List<Message> allMsg = [
  Message(avatar:"https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg", username: "Houston", text: "Hello"),
  Message(avatar:"https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg", username: "Crabinside", text: "Hello"),
  Message(avatar:"https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg", username: "DeadInside", text: "Hello"),
  Message(avatar:"https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg", username: "Littlerat", text: "Hello"),
  Message(avatar:"https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg", username: "Asamusev", text: "Hello"),
];



 