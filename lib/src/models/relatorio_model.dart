class RelatorioModel {
  String id;
  int ph;
  bool status;
  String localMedicao;
  String titulo;
  int idUsuario;

  RelatorioModel({
    required this.id,
    required this.ph,
    required this.status,
    required this.localMedicao,
    required this.titulo,
    required this.idUsuario,
  });

  // RelatorioModel(
  //     {this.id,
  //     this.ph,
  //     this.status,
  //     this.localMedicao,
  //     this.titulo,
  //     this.idUsuario});
}
