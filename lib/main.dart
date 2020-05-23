import 'package:flutter/material.dart';
import 'package:mobx_flutter/create_tarefa.dart';
import 'package:mobx_flutter/tarefa_controller.dart';

import 'tarefa.dart';
import 'tarefas_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final tarefaController = TarefaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle de Tarefas'),
      ),
      body: TarefasList(
        tarefaController,
        onAdicionaTarefa,
        onEditaTarefa,
        onRemoveTarefa,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => CreateTarefa(onAdicionaTarefa),
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }

  void onAdicionaTarefa(String tarefa) {
    tarefaController.adicionaTarefa(tarefa);
  }

  void onEditaTarefa(Tarefa tarefa) {
    tarefaController.editaTarefa(tarefa);
  }

  void onRemoveTarefa(Tarefa tarefa) {
    tarefaController.removeTarefa(tarefa);
  }
}
