import 'package:demo_app/Ulitis/Constants.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/BackImage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  final userNameControllor = TextEditingController();
  final userPasswordControllor = TextEditingController();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Baim(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                color: Colors.deepOrangeAccent,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Login Screen",
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                hintText: ("Enter Username"),
                                labelText: "Username"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: ("Enter Password"),
                              labelText: "Password",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                              Constants.prefs.setBool("LoggedIn", true);
                              Navigator.pushReplacementNamed(context, "/home");

                            },
                            color: Colors.orange,
                            textColor: Colors.white,
                            child: Text("Sign IN"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
