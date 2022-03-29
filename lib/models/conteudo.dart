class ItenAdd {
  String titulo;
  DateTime dataHora;

  ItenAdd({
    required this.titulo,
    required this.dataHora,
  });

  ItenAdd.fronJson(Map<String, dynamic> json)
      : titulo = json["titulo"],
        dataHora = DateTime.parse(json["data"]);

  Map<String, dynamic> toJson() {
    return {
      "titulo": titulo,
      "data": dataHora.toIso8601String(),
    };
  }
}
