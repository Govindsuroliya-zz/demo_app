import 'package:flutter/material.dart';

import 'CardImage.dart';

class MyChangeNameCard extends StatelessWidget {
  const MyChangeNameCard({
    Key key,
    @required this.textchange,
    @required TextEditingController SomeController,
  }) : _SomeController = SomeController, super(key: key);

  final String textchange;
  final TextEditingController _SomeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCard(),
        SizedBox(
          height: 10,
        ),
        Text(
          textchange,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _SomeController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "Type Something here",
                border: OutlineInputBorder(),
                labelText: "Type"),
          ),
        )
      ],
    );
  }
}
