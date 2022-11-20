class Fruta {
  const Fruta(this.image);
  final String image;
  bool compare(Fruta fruta) => fruta.image == image;
}


final frutas = const <Fruta>[
  Fruta('assets/frutas/Abacaxi.png'),
  Fruta('assets/frutas/Banana.png'),
  Fruta('assets/frutas/Coco.png'),
  Fruta('assets/frutas/Framboesa.png'),
  Fruta('assets/frutas/Kiwi.png'),
  Fruta('assets/frutas/Laranja.png'),
  Fruta('assets/frutas/Limão siciliano.png'),
  Fruta('assets/frutas/Limão taiti.png'),
  Fruta('assets/frutas/Maçã.png'),
  Fruta('assets/frutas/Maçã verde.png'),
  Fruta('assets/frutas/Manga.png'),
  Fruta('assets/frutas/Maracuja.png'),
  Fruta('assets/frutas/Melancia.png'),
  Fruta('assets/frutas/Morango.png'),
  Fruta('assets/frutas/Pitaya.png'),
  Fruta('assets/frutas/Uva tinta.png'),
];
