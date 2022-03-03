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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textoRecebido.text),
              TextField(
                controller: textoRecebido,
                decoration: const InputDecoration(
                  labelText: "+ Item",
                  hintText: "Digite um item",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              ElevatedButton(onPressed: observar, child: const Text("Salvar"))
            ],
          ),
        ),
      ),
    );
  }
}
