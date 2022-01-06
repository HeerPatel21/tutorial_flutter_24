import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Awesome App",
        home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.purple,
        )),
  ); //MaterialApp
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ), //AppBar
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/bg.jpg",
                  fit: BoxFit.cover,
                ), //image.asset
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Change me",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ), //text
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter Something Here"),
                  ),
                ),
              ], //widget
            ), //column
          ), //padding
        ), //card
      ), //center
      drawer: Drawer(
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
      ), //Drawer

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ), //floatingActionButton
    ); //scaffold
  }
}
