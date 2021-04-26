import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelas IF 19 F',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.purple,
          actions: [
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text("Profile")),
                PopupMenuItem(child: Text("Notification")),
                PopupMenuItem(child: Text("About")),
                PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: new Text(
                    "Arif Munandar",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  accountEmail: new Text("arifmunandar.uye@gmail.com")),
              Container(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text("Alarm"),
                  onTap: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.camera),
                  title: Text("Camera"),
                  onTap: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Message"),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text("Menu 1"),
              color: Colors.red,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(5.0),
            ),
            Container(
              child: Text("Menu 2"),
              color: Colors.green,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Menu 3"),
              color: Colors.blue,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Menu 4"),
              color: Colors.yellow,
              padding: EdgeInsets.all(16.0),
            ),
          ],
        ),
      ),
    );
  }
}
