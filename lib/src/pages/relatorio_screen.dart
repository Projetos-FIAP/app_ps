import 'package:app_ps/src/core/app_gradients.dart';
import 'package:app_ps/src/providers/relatorio_provider.dart';
import 'package:app_ps/src/shared/lista_relatorios.dart';
import 'package:app_ps/src/stores/relatorio_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RelatorioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final relatorioStore = RelatorioStore();

    return Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: RelatorioProvider().getRelatorios(relatorioStore),
                builder: (context, snapshot) {
                  return Observer(
                    builder: (_) => Container(
                      child: ListView.builder(
                          itemCount: relatorioStore.relatorios.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  ListaRelatorios(
                                      relatorios:
                                          relatorioStore.relatorios[index])
                                ],
                              ),
                            );
                          }),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
