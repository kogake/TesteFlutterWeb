//arquivo de variaveis de moeda

class Mercadoria_model {
  final String mercadoria;
  final String tipo;
  final double caixa;
  final double bandeija;
  final double kg;
  final double tonelada;

  Mercadoria_model(
      {this.mercadoria,
      this.tipo,
      this.caixa,
      this.bandeija,
      this.kg,
      this.tonelada});

  static List<Mercadoria_model> getMercadorias() {
    return <Mercadoria_model>[
      Mercadoria_model(
          mercadoria: 'milho em saco',
          tipo: 'saco',
          caixa: 1,
          bandeija: 10,
          kg: 18,
          tonelada: 0.018),
      Mercadoria_model(
          mercadoria: 'milho em caixa',
          tipo: 'caixa',
          caixa: 1,
          bandeija: 10,
          kg: 18,
          tonelada: 0.018),
      Mercadoria_model(
          mercadoria: 'milho em bandeija',
          tipo: 'bandeija',
          caixa: 0.1,
          bandeija: 1,
          kg: 0.8,
          tonelada: 0.0008),
      Mercadoria_model(
          mercadoria: 'milho em kg',
          tipo: 'kg',
          caixa: 0.16,
          bandeija: 1.2,
          kg: 1,
          tonelada: 0.001),
      Mercadoria_model(
          mercadoria: 'milho em tonelada',
          tipo: 'tonelada',
          caixa: 300,
          bandeija: 20000,
          kg: 1000,
          tonelada: 1),
    ];
  }
}
