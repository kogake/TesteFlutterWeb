import 'package:conversor_mercadoria/app/contollers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homecontroller = HomeController(toText: toText, fromText: fromText);

  test('deve converter de caixa para kg', () {
    toText.text = '4.0';
    homecontroller.convert();
    expect(fromText.text, '0.20');
  });
}
