class ItenAdd {
  String titulo;
  DateTime dataHora;

  ItenAdd({
    required this.titulo,
    required this.dataHora,
  });

  Map<String, dynamic> toJson() {
    return {
      "titulo": titulo,
      "data": dataHora.toIso8601String(),
    };
  }
}
