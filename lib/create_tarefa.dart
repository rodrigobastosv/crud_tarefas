import 'package:flutter/material.dart';
import 'package:mobx_flutter/tarefa.dart';

class CreateTarefa extends StatefulWidget {
  CreateTarefa(this.onAdicionaTarefa, {this.onEditaTarefa, this.tarefa});

  final Function(String) onAdicionaTarefa;
  final Function(Tarefa) onEditaTarefa;
  final Tarefa tarefa;

  @override
  _CreateTarefaState createState() => _CreateTarefaState();
}

class _CreateTarefaState extends State<CreateTarefa> {
  TextEditingController textEditingController;
  String tarefa;
  bool isEdit;

  @override
  void initState() {
    isEdit = widget.tarefa != null;
    textEditingController =
        TextEditingController(text: widget?.tarefa?.nome ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: textEditingController,
                onChanged: (valor) => setState(() => tarefa = valor),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Tarefa',
                ),
              ),
              SizedBox(height: 12),
              RaisedButton(
                onPressed: tarefa != ''
                    ? () {
                        if (isEdit) {
                          final tarefaEdit = Tarefa(
                            id: widget.tarefa.id,
                            nome: tarefa,
                          );
                          widget.onEditaTarefa(tarefaEdit);
                        } else {
                          widget.onAdicionaTarefa(tarefa);
                        }

                        Navigator.of(context).pop();
                      }
                    : null,
                child: Text(
                  'Adicionar Tarefa',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
