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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    child: Card(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
                      ), //Textformfield
                      SizedBox(
                        height: 20,
                      ), //sizedbox
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"),
                      ), //Textformfield
                    ], //widget
                  ),
                )), //card
              ) //column//form
            ], //widget
          ), //column
        ), //singleChild
      ), //padding
    ); //Scaffold
  }
}
