import 'package:conversor_mercadoria/app/components/conversor_box.dart';
import 'package:conversor_mercadoria/app/contollers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 200),
          child: Column(children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/milho.jpg',
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height / 5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            conversor_Box(
              selectedItem: homeController.fromMercadoria,
              controller: fromText,
              itens: homeController.mercadorias,
              onChanged: (model) {
                setState(() {
                  homeController.toMercadoria = model;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            conversor_Box(
              selectedItem: homeController.toMercadoria,
              controller: toText,
              itens: homeController.mercadorias,
              onChanged: (model) {
                setState(() {
                  homeController.fromMercadoria = model;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                homeController.convert();
              },
              child: Text('CONVERSOR'),
            ),
          ]),
        ),
      ),
    ));
  }
}
