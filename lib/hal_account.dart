import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[

          UserAvatar(),

          new TitleListView(judulBab: "My Info"),
          new ListUserProfile(
            icon: Icons.account_circle_rounded,
            teksIcon: "Personal info",
          ),
          new ListUserProfile(
            icon: Icons.assignment_ind_outlined,
            teksIcon: "Identity",
          ),
          new ListUserProfile(
            icon: Icons.home,
            teksIcon: "Adress",
          ),
          new ListUserProfile(
            icon: Icons.family_restroom_outlined,
            teksIcon: "Family info",
          ),
          new ListUserProfile(
            icon: Icons.school,
            teksIcon: "Education info",
          ),

          new TitleListView(judulBab: "Geo-Tagging Setting"),
          
          new Row(
            children: <Widget>[
              new ListUserProfile(
              icon: Icons.fingerprint_rounded,
              teksIcon: "Fingerprint",
            ),
            SizedBox(
              width: 210.0,
            ),
            RadioButtonSetting(),
            ],
          ),

          new Row(
            children: <Widget>[
              new ListUserProfile(
              icon: Icons.photo,
              teksIcon: "Photo",
            ),
            SizedBox(
              width: 253.0,
            ),
            RadioButtonSetting(),
            ],
          ),

          new Row(
            children: <Widget>[
              new ListUserProfile(
              icon: Icons.block_rounded,
              teksIcon: "None",
            ),
            SizedBox(
              width: 258.0,
            ),
            RadioButtonSetting(),
            ],
          ),
          
          

          new TitleListView(judulBab: "Settings"),
          new ListUserProfile(
            icon: Icons.no_encryption,
            teksIcon: "Change Password",
          ),

          new Row(
            children: <Widget>[
              new ListUserProfile(
              icon: Icons.notification_important,
              teksIcon: "Notification",
            ),
            SizedBox(
              width: 180.0,
            ),
            SwitchButtonNotification(),
            ],
          ),

          new ListUserProfile(
            icon: Icons.logout,
            teksIcon: "Logout",
          ),
        ],
      ),
    );
  }
}


class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
     padding: new EdgeInsets.all(10),
     child: new Row(
       children: <Widget>[
        new SizedBox(
          width: 60.0,
        ),
        new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("Padepokan Tujuh Sembilan"),
                new Text("Padepokan79@gmail.com"),
              ],
            ),
          ),
        ),
        new SizedBox(
          width: 50.0,
        ),
        new CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("images/girl_avatar.png"),
        ),
        
       ],
     ),
    );
  }
}

class TitleListView extends StatelessWidget {
  TitleListView({this.judulBab});

  final String judulBab;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(3),
      child: new Align(
        alignment: Alignment.topLeft,
        child: new Row(
          children: <Widget>[
            new SizedBox(
              width: 6.0,
            ),
            new Text(
              judulBab,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Serif',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ListUserProfile extends StatelessWidget {
  ListUserProfile({this.icon, this.teksIcon});

  final IconData icon;
  final String teksIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(5),
      child: new Row(
        children: <Widget>[
          new Icon(icon, size: 40.0),
          SizedBox(
            width: 10.0,
          ),
          new Text(teksIcon, style: new TextStyle(fontSize: 18.0))
        ],
      ),
    );
  }
}

class RadioButtonSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Radio(value: null, groupValue: null, onChanged: null),
    );
  }
}

class SwitchButtonNotification extends StatefulWidget {
  @override
  _SwitchButtonNotificationState createState() => _SwitchButtonNotificationState();
}

class _SwitchButtonNotificationState extends State<SwitchButtonNotification> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Switch(
        value: isSwitched,
          onChanged: (value){
            setState(() {
              isSwitched=value;
              print(isSwitched);
            });
          },
          activeTrackColor: Colors.amberAccent[700],
          activeColor: Colors.white,
          ),
        );
  }
}