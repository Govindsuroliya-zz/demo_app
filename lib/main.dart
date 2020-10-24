import 'package:demo_app/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';

<<<<<<< Updated upstream
import 'Pages/Home_Page.dart';

=======
>>>>>>> Stashed changes
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
