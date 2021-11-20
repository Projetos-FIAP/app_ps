import 'package:app_ps/src/models/relatorio_model.dart';
import 'package:flutter/material.dart';

class ListaRelatorios extends StatelessWidget {
  RelatorioModel relatorios;

  ListaRelatorios({
    Key? key,
    required this.relatorios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/", arguments: relatorios);
            },
            child: ListTile(
              title: Container(
                child: Text(relatorios.titulo),
              ),
              subtitle: Container(
                child: Column(
                  children: [
                    Text('Ph da água: ' + relatorios.ph.toString()),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
