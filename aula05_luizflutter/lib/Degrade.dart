import 'package:flutter/material.dart';

class Degrade extends StatelessWidget {
  const Degrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 221, 0),
            Color.fromARGB(255, 255, 153, 119),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: const Center(
          child: Text(
            'Você é mais corajoso do que acredita, mais forte do que parece e está mais preparado do que imagina.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
