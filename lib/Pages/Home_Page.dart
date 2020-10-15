import 'package:flutter/material.dart';

import '../AppDrawer.dart';
import '../Change_Name_Card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _SomeController = TextEditingController();
  var textchange = "My Name";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Govind Suroliya"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: MyChangeNameCard(
                textchange: textchange, SomeController: _SomeController),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textchange = _SomeController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
