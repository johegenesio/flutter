// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Coluna extends StatefulWidget {
  const Coluna({super.key});

  @override
  State<Coluna> createState() => _ColunaState();
}

class _ColunaState extends State<Coluna> {
  String nome = 'João';

  int valor1 = 11;
  int valor2 = 5;

  int soma() {
    return valor1 + valor2;
  }

  int subtrair() {
    return valor1 - valor2;
  }

  int multi() {
    return valor1 * valor2;
  }

  double dividir() {
    return valor1 / valor2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Olá, $nome',
            style: const TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            'Soma: ${soma()}',
            style: const TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            'Subtração: ${subtrair()}',
            style: const TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            'Multiplicação: ${multi()}',
            style: const TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            'Divisão: ${dividir().toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 50, color: Colors.black),
          ),
        )
      ],
    );
  }
}
