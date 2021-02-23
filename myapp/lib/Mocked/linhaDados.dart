import 'package:flutter/material.dart';

class linhaDados {
  int quantidade;
  String nomeCliente;
  String mercadoria;
  double preco;
  bool pago;
  bool saiu;
  String funcionario;

  linhaDados(
      {this.quantidade,
      this.nomeCliente,
      this.mercadoria,
      this.preco,
      this.pago,
      this.saiu,
      this.funcionario});

  static List<linhaDados> getlinhaDados() {
    return <linhaDados>[
      linhaDados(
          quantidade: 10,
          nomeCliente: "Jefferso",
          mercadoria: "milho verde",
          preco: 29,
          pago: true,
          saiu: false,
          funcionario: "Milton"),
      linhaDados(
          quantidade: 23,
          nomeCliente: "MVX",
          mercadoria: "Laranja",
          preco: 25,
          pago: false,
          saiu: true,
          funcionario: "Cidinha"),
      linhaDados(
          quantidade: 33,
          nomeCliente: "Pamonharia",
          mercadoria: "Maca ",
          preco: 33,
          pago: true,
          saiu: true,
          funcionario: "Tico"),
      linhaDados(
          quantidade: 45,
          nomeCliente: "Fartura",
          mercadoria: "milho verde",
          preco: 50,
          pago: false,
          saiu: true,
          funcionario: "Milton"),
      linhaDados(
          quantidade: 60,
          nomeCliente: "Padrão",
          mercadoria: "milho verde",
          preco: 60,
          pago: true,
          saiu: false,
          funcionario: "Cidinha"),
    ];
  }
}
