import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  // aqui ficam as declaracoes de  variaveis para utilizacao no aplicativo

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Testando $counter'),
          onTap: () {
            print('clicado');
            setState(() {
              counter++;
              print('$counter');
            });
          },
        ),
      ),
    );
  }
}
