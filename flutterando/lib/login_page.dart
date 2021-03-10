import 'package:flutter/material.dart';
import 'package:flutterando/hompage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = ' ';
  String password = ' ';

  Widget _body() {
    return Column(children: [
      SingleChildScrollView(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/images/ceagesp_logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Temos aqui a tela de login",
                  style: TextStyle(fontSize: 28),
                ),
                height: 40,
              ),
              Container(
                width: 10,
                height: 40,
              ),
              Card(
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                        print(text);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'seuemail@gmail.com',
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
                        hintText: 'Senhasecreta',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                color: Colors.green[100],
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/lightblue_login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          _body(),
        ],
      ),
    ));
  }
}
