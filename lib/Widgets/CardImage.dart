import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://scontent.fjai3-1.fna.fbcdn.net/v/t1.0-9/117891618_196718935160442_179207037603442801_o.jpg?_nc_cat=103&_nc_sid=84a396&_nc_ohc=A4hfVBzL5MoAX-NWLCT&_nc_ht=scontent.fjai3-1.fna&oh=4e2fe5efe7f06d25f3fbd276e8a4c010&oe=5FABC61B",
      fit: BoxFit.cover,
    );
  }
}
