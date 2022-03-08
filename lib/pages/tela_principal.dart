import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController textoRecebido = TextEditingController();

  List<String> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: "Adicione uma tarefa",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    controller: textoRecebido,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        lista.add(textoRecebido.text);
                      });
                    },
                    child: const Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF00D7F3),
                      fixedSize: const Size(60, 60),
                    ),
                  ),
                )
              ],
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (String nomesListas in lista)
                    ListTile(
                      title: Text(
                        nomesListas,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text("Você possui 0 tarefas pendentes"),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Limpar tarefas"),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF00D7F3),
                      fixedSize: const Size(60, 60),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
