import 'package:demo_app/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';

import 'Pages/Home_Page.dart';

void main() {
  runApp(MaterialApp(
    title: "Demo App",
    home: LoginPage(),
    theme: ThemeData(primarySwatch: Colors.red),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}
