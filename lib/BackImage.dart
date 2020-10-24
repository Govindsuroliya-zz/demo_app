import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class Baim extends StatelessWidget {
  const Baim({Key key}) : super(key: key);
=======
class baim extends StatelessWidget {
  const baim({Key key}) : super(key: key);
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/bg.jpg",
    fit: BoxFit.cover,
    color: Colors.black.withOpacity(0.5),
    colorBlendMode: BlendMode.darken,);
  }
}
