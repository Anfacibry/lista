import 'package:flutter/material.dart';
import 'package:lista/models/conteudo.dart';

import '../widgets/lista_itens.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController textoRecebido = TextEditingController();

  List<ItenAdd> lista = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 10),
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
                          ItenAdd item = ItenAdd(
                              titulo: textoRecebido.text,
                              dataHora: DateTime.now());
                          lista.add(item);
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
                    for (ItenAdd nomesListas in lista)
                      ListaDeItens(
                        item: nomesListas,
                      ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child:
                        Text("Você possui ${lista.length} tarefas pendentes"),
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
      )),
    );
  }
}
