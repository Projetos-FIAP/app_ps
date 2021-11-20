import 'package:app_ps/src/models/relatorio_model.dart';
import 'package:app_ps/src/providers/dio.dart';

class RelatorioProvider {
  Future<void> getRelatorios(relatorioStore) async {
    final response = await dio.get("/relatorios");

    relatorioStore.relatorios.clear();

    if (response.statusCode == 200) {
      response.data.forEach(
        (relatorio) => relatorioStore.add(
          new RelatorioModel(
              id: relatorio['id'],
              ph: relatorio['ph'],
              status: relatorio['status'],
              localMedicao: relatorio['localMedicao'],
              titulo: relatorio['titulo'],
              idUsuario: relatorio['idUsuario']),
        ),
      );
    } else {
      throw Exception("Falha ao retornar os relatórios, tente novamente");
    }
  }
}
