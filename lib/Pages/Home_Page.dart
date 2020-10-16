import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demo_app/AppDrawer.dart';
import 'dart:convert';
// import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _SomeController = TextEditingController();
  var textchange = "My Name";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Govind Suroliya"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]["url"]),
                      subtitle: Text("ID : ${data[index]["id"]}"),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
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
