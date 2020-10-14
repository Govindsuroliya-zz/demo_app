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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
            color: Colors.black,
            width: 200,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.teal,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    // color: Colors.teal,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    // color: Colors.teal,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
