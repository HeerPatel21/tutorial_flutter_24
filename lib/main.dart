import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/Constants.dart';

Future main() async {
  WidgetFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPrefrences.getInstance();
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    ), //MaterialApp
  );
}
