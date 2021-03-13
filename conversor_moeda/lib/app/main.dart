import 'package:conversor_moeda/app/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppInicio());
}

class AppInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
