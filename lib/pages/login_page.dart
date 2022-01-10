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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Form(
                child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Username"),
                ), //Textformfield
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Password"),
                ), //Textformfield
              ], //widget
            )) //column//form
          ], //widget
        ), //column
      ), //SinglChild
    ); //Scaffold
  }
}
