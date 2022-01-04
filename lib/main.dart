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
          eidth: 100,
          height: 100,
        ), //Container
      ), //Center
    ); //Scaffold
  }
}
