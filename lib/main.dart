import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Demo App", home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Govind Suroliya"),
        ),
        body: Container(
          child: Center(child: Text("HI Flutter")),
        ),
    );
  }
}
