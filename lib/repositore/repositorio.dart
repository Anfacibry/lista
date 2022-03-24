import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/conteudo.dart';

class TodoRepositorio {
  TodoRepositorio() {
    SharedPreferences.getInstance().then((valor) => sharedPreferences = valor);
  }

  late SharedPreferences sharedPreferences;

  void salveTodaLista(List<ItenAdd> itens) {
    final String jsonString = json.encode(itens);
    sharedPreferences.setString("lista", jsonString);
  }
}
