import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title:Text("Login Page"),
      ),//AppBar
      body:SingleChildScrollView(
        child:Column(),//Column
      ),//singlechildScrollView

    );//Scaffold
  }
}
