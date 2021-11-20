import 'package:app_ps/src/models/relatorio_model.dart';
import 'package:mobx/mobx.dart';
part 'relatorio_store.g.dart';

class RelatorioStore = _RelatorioStore with _$RelatorioStore;

abstract class _RelatorioStore with Store {
  @observable
  var relatorios = ObservableList<RelatorioModel>();

  @action
  void add(RelatorioModel relatorio) {
    relatorios.add(relatorio);
  }
}
