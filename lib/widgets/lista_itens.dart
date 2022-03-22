import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:lista/models/conteudo.dart';

class ListaDeItens extends StatelessWidget {
  final ItenAdd item;
  final Function(ItenAdd) remover;

  const ListaDeItens({
    Key? key,
    required this.item,
    required this.remover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableStrechActionPane(),
      secondaryActions: [
        IconSlideAction(
          color: const Color.fromARGB(255, 235, 104, 95),
          icon: Icons.delete,
          onTap: () => remover(item),
        )
      ],
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 19, 79, 87),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
      ),
    );
  }
}
