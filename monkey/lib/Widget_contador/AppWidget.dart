import 'package:flutter/material.dart';

import 'HomePage.dart';

class AppWidget extends StatelessWidget {
  final String titulo;

  const AppWidget({Key key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Container(child: Center(child: HomePage())));
  }
}
