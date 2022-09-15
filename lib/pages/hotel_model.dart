import 'dart:ffi';

class Hotel {
  String imageUrl;
  String nome;
  String cidade;
  String descricao;
  Double valor;
  Int quartos;
  String wifi;
  Int banheiros;

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
