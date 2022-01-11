import 'package:flutter/material.dart';
import '../bg_image.dart';
import 'package:tutorial/utils/Constants.dart';

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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
                              ), //Textformfield
                              SizedBox(
                                height: 20,
                              ), //sizedbox
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"),
                              ), //Textformfield
                            ], //widget
                          ), //column
                        )), //padding//form
                        SizedBox(
                          height: 20,
                        ), //sizedbox
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              // Navigator.push(context,
                              //  MaterialPageRoute(
                              //    builder: (context) => HomePage()));
                              Constants.prefs.setBool("loggedIn", true);
                              Navigator.pushReplacementNamed(context, "/home");
                            },
                            child: Text("Sign In"),
                            color: Colors.orange,
                            textColor: Colors.white,
                          ), //button
                        ) //padding
                      ], //widget
                    ), //column
                  ), //card
                ), //single child
              ), //padding//padding
            ), //center
          ], //widget
        )); //stack//Scaffold
  }
}
