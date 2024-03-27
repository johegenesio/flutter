import 'package:flutter/material.dart';
import 'package:rolar_dado/rolarDado.dart';

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 603,
          color: const Color.fromARGB(255, 39, 149, 142),
          child: const RolarDado(),
        )
      ],
    );
  }
}
