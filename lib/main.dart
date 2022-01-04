import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  )); //MaterialApp
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ), //AppBar
      body: Center(
        child: Container(
          color: Colors.teal,
          width: 100,
          height: 100,
          child: Text("I am a Box"),
        ), //Container
      ), //Center
    ); //Scaffold
  }
}
