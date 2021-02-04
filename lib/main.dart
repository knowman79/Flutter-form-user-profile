import 'package:flutter/material.dart';
import './hal_home.dart' as home ;
import './hal_notification.dart' as notification;
import './hal_account.dart' as account;
import './hal_announcement.dart' as announcement;
import './hal_message.dart' as message;

void main(){
  runApp(new MaterialApp(
    title :"Tab Bar",
    home : new Home (),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  //1
  TabController controller;

  //2
  @override
  void initState() {
    controller = new TabController(length: 5, vsync:this);
    super.initState();
  }

  //3
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('Account'),
        leading: FlatButton(
          textColor: Colors.white,
          child: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => print('Back'),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.dehaze_outlined,
            ),
            onPressed: () => print('Setting'),
          )
        ],
      ),

      body : new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.Home(),
          new notification.Notification(),
          new message.Message(),
          new announcement.Announcement(),
          new account.Account(),
        ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.grey[700],
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home), ),
              new Tab(icon: new Icon(Icons.notifications),),
              new Tab(icon: new Icon(Icons.message,),),
              new Tab(icon: new Icon(Icons.announcement),),
              new Tab(icon: new Icon(Icons.account_box), ),
              ], 
      ),
      ),
        
    );
  }
}

        