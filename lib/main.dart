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
          alignment: Alignment.center,
          //color: Colors.purple,//commented as we need to give color inside decoration property
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 5)
              ],
              color: Colors.teal,
              gradient: LinearGradient(colors: [
                Colors.yellow,
                Colors.pink,
              ])), //BoxDecoration
          child: Text("I am a Box"),
        ), //Container
      ), //Center
    ); //Scaffold
  }
}
