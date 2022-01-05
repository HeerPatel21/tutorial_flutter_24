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
          padding: const EdgeInsets.all(8),
          //color: Colors.purple,//commented as we need to give color inside decoration property
          width: 100,
          height: 100,
        ), //Container
      ), //Center
    ); //Scaffold
  }
}
