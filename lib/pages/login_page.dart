import 'package:flutter/material.dart';
import '../bg_image.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ), //AppBar
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ), //inputDecoration
                      ), //TextFormField
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"), //InputDecoration
                      ) //TextFormField
                    ], //widget
                  ), //column
                ),
              ),
            ),
          ],
        )); //Scaffold
  }
}
