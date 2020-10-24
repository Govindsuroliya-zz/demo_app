<<<<<<< Updated upstream
=======
import 'package:demo_app/Pages/Home_Page.dart';
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
        Baim(),
=======
        baim(),
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
                            controller: userNameControllor,
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                              Navigator.pushNamed(context, "/home");
=======
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
>>>>>>> Stashed changes
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
