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
      appBar: AppBar(
        title: Text("Awesome App"),
      ), //AppBar
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Hi,I am drawer",
                style: TextStyle(color: Colors.white), //TextStyle
              ), //Text
              decoration: BoxDecoration(color: Colors.indigo),
            ), //DrawerHeader
            ListTile(
              leading: Icon(Icons.person), //icon.person
              title: Text("Account"), //title
              subtitle: Text("Personal"), //subtitle
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
