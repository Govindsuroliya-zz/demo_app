import 'package:flutter/material.dart';

import 'Pages/Home_Page.dart';
void main() {
  runApp(MaterialApp(
    title: "Demo App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}