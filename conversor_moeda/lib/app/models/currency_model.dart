//arquivo de variaveis de moeda

class CurrencyModel {
  final String mercadoria;
  final double caixa;
  final double bandeija;
  final double kg;
  final double tonelada;

  CurrencyModel(
      {this.mercadoria, this.caixa, this.bandeija, this.kg, this.tonelada});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          mercadoria: 'milho em saco',
          caixa: 1,
          bandeija: 10,
          kg: 18,
          tonelada: 0.018),
      CurrencyModel(
          mercadoria: 'milho em caixa',
          caixa: 1,
          bandeija: 10,
          kg: 18,
          tonelada: 0.018),
      CurrencyModel(
          mercadoria: 'milho em bandeija',
          caixa: 0.1,
          bandeija: 1,
          kg: 0.8,
          tonelada: 0.0008),
      CurrencyModel(
          mercadoria: 'milho em kg',
          caixa: 0.16,
          bandeija: 1.2,
          kg: 1,
          tonelada: 0.001),
      CurrencyModel(
          mercadoria: 'milho em tonelada',
          caixa: 300,
          bandeija: 20000,
          kg: 1000,
          tonelada: 1),
    ];
  }
}
