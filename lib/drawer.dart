import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hi,I am drawer",
          //     style: TextStyle(color: Colors.white), //TextStyle
          //   ), //Text
          //   decoration: BoxDecoration(color: Colors.purple),
          // ), //DrawerHeader
          UserAccountsDrawerHeader(
            accountName: Text("Heer Patel"),
            accountEmail: Text("heerpatel2754@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://media.istockphoto.com/photos/private-spacecraft-module-launch-above-the-clouds-picture-id1207583250?b=1&k=20&m=1207583250&s=170667a&w=0&h=m3ZDOZmqlDuLzTAq2MboxQzeNJYDRSZOP6E44hDQLrk=",
              ), //BackgroundImage
            ), //circleAvatar
          ), //UserAccountsDrawerHeader
          ListTile(
            leading: Icon(Icons.person), //icon.person
            title: Text("Account"), //title
            subtitle: Text("Personal"), //subtitle
            trailing: Icon(Icons.edit), //trailing
          ), //ListTile
          ListTile(
            leading: Icon(Icons.email), //icon.mail
            title: Text("Email"), //title
            subtitle: Text("heerpatel2754@gmail.com"), //subtitle
            trailing: Icon(Icons.send), //trailing
          ), //ListTile
        ], //Widget
      ), //ListView
    ); //Drawer
  }
}
