import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// sempre importamos a classe e o estado para criar um arquivo separado.
class _HomePageState extends State<HomePage> {
  int counter = 0;
  // aqui ficam as declaracoes de  variaveis para utilizacao no aplicativo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('meu ERP'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.icecream),
        onPressed: () {
          setState(() {
            counter++;
            print('$counter');
          });
        },
      ),
      body: Container(
        height: 500,
        width: 500,
        color: Colors.white,
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Center(
              child: GestureDetector(
                child:
                    Text('Testando $counter', style: TextStyle(fontSize: 20)),
                onTap: () {
                  setState(() {
                    counter++;
                    print('$counter');
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
