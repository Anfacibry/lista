import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final TextEditingController textoRecebido = TextEditingController();

  void observar() {
    setState(() {
      textoRecebido;
    });
  }

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
                const Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Adicione uma tarefa",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF00D7F3),
                      fixedSize: const Size(60, 60),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
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
