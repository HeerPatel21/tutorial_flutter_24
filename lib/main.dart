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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            //
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.green,
              ), //Container
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.yellow,
              ), //container
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.red,
              ), //container
            ], //<Widget>
          ), //row
        ),
      ), //container
    ); //scaffold
  }
}
