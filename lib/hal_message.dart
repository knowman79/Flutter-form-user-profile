import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text("Message", style: new TextStyle(fontSize: 30.0)),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Image.asset("images/message.png"),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Text("Belajar menggunakan image", style: new TextStyle(fontSize: 20.0)),
        ],
      )),
    );
  }
}