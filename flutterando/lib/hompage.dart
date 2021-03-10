import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int counter = 0;
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: AppControler.instance.isDarkTheme,
          onChanged: (value) {
            AppControler.instance.changeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => (setState(() {
          counter++;
        })),
      ),
    );
  }
}
