class Tarefa {
  Tarefa({this.id, this.nome});

  int id;
  String nome;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tarefa && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
