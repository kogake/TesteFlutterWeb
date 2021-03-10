import 'package:flutter/material.dart';
import 'package:flutterando/hompage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = ' ';
  String password = ' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                  print(text);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'sadsa',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                width: 10,
                height: 40,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                  print(text);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      )),
    );
  }
}
