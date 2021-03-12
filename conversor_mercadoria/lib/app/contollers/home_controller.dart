import 'package:conversor_mercadoria/app/Models/mercadoria_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  //variaveis locais
  List<Mercadoria_model> mercadorias;
  Mercadoria_model toMercadoria;
  Mercadoria_model fromMercadoria;

  //variaveis digitadas

  final TextEditingController toText;
  final TextEditingController fromText;

  HomeController({this.toText, this.fromText}) {
    mercadorias = Mercadoria_model.getMercadorias();
    toMercadoria = mercadorias[2];
    fromMercadoria = mercadorias[1];
  }

  void convert() {
    //pega variavel editada e joga no text
    String text = fromText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;
    print(mercadorias);
    print(toMercadoria.tipo);
    print(fromMercadoria.tipo);

    if (fromMercadoria.tipo == 'caixa') {
      returnValue = value * toMercadoria.caixa;
    } else if (fromMercadoria.tipo == 'bandeija') {
      returnValue = value * toMercadoria.bandeija;
    } else if (fromMercadoria.tipo == 'kg') {
      returnValue = value * toMercadoria.kg;
    } else if (fromMercadoria.tipo == 'tonelada') {
      returnValue = value * toMercadoria.tonelada;
    }
    toText.text = returnValue.toStringAsFixed(2);
  }
}
