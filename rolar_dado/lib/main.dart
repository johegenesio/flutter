import 'package:flutter/material.dart';
import 'package:rolar_dado/Dados.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RODE O DADO',
      home: Scaffold(
        body: Dados(),
      ),
    );
  }
}