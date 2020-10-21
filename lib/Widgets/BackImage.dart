import 'package:flutter/material.dart';

class Baim extends StatelessWidget {
  const Baim({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/bg.jpg",
    fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.5),
    colorBlendMode: BlendMode.darken,);
  }
}
