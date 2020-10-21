import 'package:demo_app/Pages/LoginScreen.dart';
import 'package:demo_app/Ulitis/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/Home_Page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    title: "Demo App",
    debugShowCheckedModeBanner: false,
    home: Constants.prefs.getBool("LoggedIn") == true ? HomePage():LoginPage(),
    theme: ThemeData(primarySwatch: Colors.red),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}
