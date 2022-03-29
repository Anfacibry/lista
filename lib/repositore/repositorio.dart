import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/conteudo.dart';

class TodoRepositorio {
  late SharedPreferences sharedPreferences;
  static const String key = "lista";

  Future<List<ItenAdd>> pegandoLista() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString(key) ?? "[]";
    final List jsonDecod = json.decode(jsonString) as List;
    return jsonDecod.map((e) => ItenAdd.fronJson(e)).toList();
  }

  void salveTodaLista(List<ItenAdd> itens) {
    final String jsonString = json.encode(itens);
    sharedPreferences.setString(key, jsonString);
  }
}
