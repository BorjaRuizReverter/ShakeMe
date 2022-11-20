class Bebida {
  const Bebida(this.image);
  final String image;
  bool compare(Bebida bebida) => bebida.image == image;
}

final bebidas = const <Bebida>[
  Bebida('assets/bebidas/Amaretto.png'),
  Bebida('assets/bebidas/Blue curação.png'),
  Bebida('assets/bebidas/Brandy.png'),
  Bebida('assets/bebidas/Cachaça.png'),
  Bebida('assets/bebidas/Campari.png'),
  Bebida('assets/bebidas/Cerveja.png'),
  Bebida('assets/bebidas/Champagne.png'),
  Bebida('assets/bebidas/Coca cola.png'),
  Bebida('assets/bebidas/Espumante.png'),
  Bebida('assets/bebidas/Ginebra.png'),
  Bebida('assets/bebidas/Ginger ale.png'),
  Bebida('assets/bebidas/Granadina.png'),
  Bebida('assets/bebidas/Lambrusco.png'),
  Bebida('assets/bebidas/Licor de banana.png'),
  Bebida('assets/bebidas/Licor de café.png'),
  Bebida('assets/bebidas/Licor de coco.png'),
  Bebida('assets/bebidas/Licor de maçã.png'),
  Bebida('assets/bebidas/Licor de pessego.png'),
  Bebida('assets/bebidas/Limoncello.png'),
  Bebida('assets/bebidas/Rum.png'),
  Bebida('assets/bebidas/Soda.png'),
  Bebida('assets/bebidas/Southern comfort.png'),
  Bebida('assets/bebidas/Tequila.png'),
  Bebida('assets/bebidas/Tônica.png'),
  Bebida('assets/bebidas/Triple sec.png'),
  Bebida('assets/bebidas/Vermut.png'),
  Bebida('assets/bebidas/Vinagre de maçã.png'),
  Bebida('assets/bebidas/Vinho branco.png'),
  Bebida('assets/bebidas/Vinho tinto.png'),
  Bebida('assets/bebidas/Vodka.png'),
  Bebida('assets/bebidas/Vodka citron.png'),
  Bebida('assets/bebidas/Vodka de baunilha.png'),
  Bebida('assets/bebidas/Vodka de caramelo.png'),
  Bebida('assets/bebidas/Whiskey.png'),
  Bebida('assets/bebidas/Xarope de ácer.png'),
];

