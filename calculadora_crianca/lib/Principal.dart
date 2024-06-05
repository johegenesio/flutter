import 'dart:math';

import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  //Declração de variáveis
  String titulo = 'Calculadora do Patati e Patatá';
  bool alterarCor = true;

  Color appCor1 = Colors.blue.shade600;
  Color appCor2 = Colors.blue.shade800;
  Color appCor3 = Colors.yellow;
  Color appCor4 = Colors.white;
  Color cores = Colors.white;
  String get img1 => 'assets/Patati_Patata.jpg';
  String get img2 => 'assets/Patati-Patata.jpg';
  int num1 = Random().nextInt(100) + 1;
  int num2 = Random().nextInt(100) + 1;
  int num3 = Random().nextInt(4);
   soma(int a, int b) {
    int r = a + b;
  }

  String operatorRandom = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          elevation: 0,
          title: Text(
            titulo,
            style: TextStyle(color: appCor4, fontSize: 20, shadows: const [
              Shadow(offset: Offset(0, 0), blurRadius: 2, color: Colors.black87)
            ]),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (alterarCor) {
                      appCor4 = cores;
                      alterarCor = false;
                    } else if (alterarCor == false) {
                      appCor4 = appCor3;
                      alterarCor = true;
                    }
                  });
                },
                icon: Icon(
                  Icons.calculate,
                  color: appCor4,
                  size: 24,
                ))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [appCor1, appCor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Calculadora do Patati e Patatá'),
            Row(
              children: [Text('$num1'), Text('$operatorRandom'), Text('$num2')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    alterarCor ? img1 : img2,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  width: 8,
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    alterarCor ? img2 : img1,
                    height: 200,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
