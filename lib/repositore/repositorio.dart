import 'package:shared_preferences/shared_preferences.dart';

class TodoRepositorio {
  TodoRepositorio() {
    SharedPreferences.getInstance().then((valor) => sharedPreferences = valor);
  }

  late SharedPreferences sharedPreferences;
}
