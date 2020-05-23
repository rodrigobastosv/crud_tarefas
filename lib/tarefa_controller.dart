import 'package:mobx/mobx.dart';

import 'tarefa.dart';

part 'tarefa_controller.g.dart';

class TarefaController = TarefaControllerBase with _$TarefaController;

abstract class TarefaControllerBase with Store {
  @observable
  ObservableList<Tarefa> tarefas = ObservableList.of([]);

  @action
  void adicionaTarefa(String nome) {
    final tarefa = Tarefa(
      id: tarefas.length + 1,
      nome: nome,
    );
    tarefas.add(tarefa);
  }

  @action
  void editaTarefa(Tarefa tarefa) {
    final index = tarefas.indexOf(tarefa);
    tarefas.removeAt(index);
    tarefas.insert(index, tarefa);
  }

  @action
  void removeTarefa(Tarefa tarefa) {
    tarefas.remove(tarefa);
  }
}
