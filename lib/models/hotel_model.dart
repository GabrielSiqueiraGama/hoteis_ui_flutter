class Hotel {
  String imageUrl;
  String nome;
  String cidade;
  String descricao;
  double valor;
  int quartos;
  String wifi;
  int banheiros;

  Hotel({
    required this.imageUrl,
    required this.nome,
    required this.cidade,
    required this.descricao,
    required this.valor,
    required this.quartos,
    required this.wifi,
    required this.banheiros,
  });
}

final List<Hotel> hoteis = [
  Hotel(
      imageUrl: 'assets/images/predio01.png',
      nome: 'Hotel bacana',
      cidade: 'Balsas-MA',
      descricao: "Um hotel completo com tudo que você pode um dia precisar",
      valor: 200.00,
      quartos: 02,
      wifi: 'Possui',
      banheiros: 02),
  Hotel(
      imageUrl: 'assets/images/sala01.png',
      nome: 'Sinta-se em casa',
      cidade: 'Palmas-TO',
      descricao:
          "Quartos lindos para aproveitar sua estagia durante a viagem, com lindas vistas e café da manhã já incluso, para aproveitar melhor a sua viagem fique conosco.",
      valor: 300.00,
      quartos: 01,
      wifi: 'Possui',
      banheiros: 01),
  Hotel(
      imageUrl: 'assets/images/predio02.png',
      nome: 'Hotel trivago',
      cidade: 'Balsas-MA',
      descricao:
          "O hotel que você precisa conhecer para que sua estadia na cidade realmente seja completa, aqui você tem direito a tudo que desejar, além de também termos parte infantil, spás, area de lazer e de esportes e uma academia própria",
      valor: 400.00,
      quartos: 04,
      wifi: 'Possui',
      banheiros: 02),
  Hotel(
      imageUrl: 'assets/images/sala02.png',
      nome: 'Quarto dreams',
      cidade: 'Balsas-MA',
      descricao:
          "Um otimo lugar para tirar o seu repouso depois de uma longa viagem",
      valor: 150.00,
      quartos: 01,
      wifi: 'Possui',
      banheiros: 01),
];
