// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaController on TarefaControllerBase, Store {
  final _$tarefasAtom = Atom(name: 'TarefaControllerBase.tarefas');

  @override
  ObservableList<Tarefa> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(ObservableList<Tarefa> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$TarefaControllerBaseActionController =
      ActionController(name: 'TarefaControllerBase');

  @override
  void adicionaTarefa(String nome) {
    final _$actionInfo = _$TarefaControllerBaseActionController.startAction(
        name: 'TarefaControllerBase.adicionaTarefa');
    try {
      return super.adicionaTarefa(nome);
    } finally {
      _$TarefaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editaTarefa(Tarefa tarefa) {
    final _$actionInfo = _$TarefaControllerBaseActionController.startAction(
        name: 'TarefaControllerBase.editaTarefa');
    try {
      return super.editaTarefa(tarefa);
    } finally {
      _$TarefaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTarefa(Tarefa tarefa) {
    final _$actionInfo = _$TarefaControllerBaseActionController.startAction(
        name: 'TarefaControllerBase.removeTarefa');
    try {
      return super.removeTarefa(tarefa);
    } finally {
      _$TarefaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas}
    ''';
  }
}
