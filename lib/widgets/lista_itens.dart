import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lista/models/conteudo.dart';

class ListaDeItens extends StatelessWidget {
  final ItenAdd item;

  const ListaDeItens({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 19, 79, 87),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat("dd/MM/yy - HH:mm").format(item.dataHora),
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            item.titulo,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
