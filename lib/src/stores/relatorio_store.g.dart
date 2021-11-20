// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relatorio_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RelatorioStore on _RelatorioStore, Store {
  final _$relatoriosAtom = Atom(name: '_RelatorioStore.relatorios');

  @override
  ObservableList<RelatorioModel> get relatorios {
    _$relatoriosAtom.reportRead();
    return super.relatorios;
  }

  @override
  set relatorios(ObservableList<RelatorioModel> value) {
    _$relatoriosAtom.reportWrite(value, super.relatorios, () {
      super.relatorios = value;
    });
  }

  final _$_RelatorioStoreActionController =
      ActionController(name: '_RelatorioStore');

  @override
  void add(RelatorioModel relatorio) {
    final _$actionInfo = _$_RelatorioStoreActionController.startAction(
        name: '_RelatorioStore.add');
    try {
      return super.add(relatorio);
    } finally {
      _$_RelatorioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
relatorios: ${relatorios}
    ''';
  }
}
