import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'create_tarefa.dart';
import 'tarefa.dart';
import 'tarefa_controller.dart';

class TarefasList extends StatelessWidget {
  TarefasList(
    this.tarefaController,
    this.onAdicionaTarefa,
    this.onEditaTarefa,
    this.onRemoveTarefa,
  );

  final TarefaController tarefaController;
  final Function(String) onAdicionaTarefa;
  final Function(Tarefa) onEditaTarefa;
  final Function(Tarefa) onRemoveTarefa;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView.builder(
        itemBuilder: (_, i) => ListTile(
          title: Text(tarefaController.tarefas.toList()[i].nome),
          trailing: Container(
            width: 100,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CreateTarefa(
                          onAdicionaTarefa,
                          onEditaTarefa: onEditaTarefa,
                          tarefa: tarefaController.tarefas.toList()[i],
                        ),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () =>
                      onRemoveTarefa(tarefaController.tarefas.toList()[i]),
                ),
              ],
            ),
          ),
        ),
        itemCount: tarefaController.tarefas.toList().length,
      ),
    );
  }
}
