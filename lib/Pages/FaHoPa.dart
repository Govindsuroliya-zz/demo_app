import 'package:demo_app/Ulitis/Constants.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
// import 'package:http/http.dart' as http;

class HomePageFB extends StatelessWidget {
 Future getData() async {
    var url = "https://teqbot.in/wp-json/wp/v2/posts";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Govind Suroliya"),
        actions: [IconButton(color: Colors.white,icon: Icon(Icons.logout), onPressed: () {
          Constants.prefs.setBool("LoggedIn",false);
          Navigator.pushReplacementNamed(context, "/login");
        })],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,  snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none:
            return Center(child: Text("Fetch Something"),);
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator(),);
          case ConnectionState.done:
            if (snapshot.hasError){
              return Center(
                child: Text("Sone Error Occured"),
              );
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(snapshot.data[index]["title"]["rendered"]),
                    // leading: Image.network(data[index]["url"]),
                    // subtitle: Text("ID : ${data[index]["id"]}"),
                  ),
                );
              },
              itemCount: snapshot.data.length,
            );
        }
      },)

    );
  }
}
