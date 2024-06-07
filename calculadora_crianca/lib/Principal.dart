import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  int _num1 = 0;
  int _num2 = 0;
  final Random _random = Random();
  String _operador = '';
  final TextEditingController _controller = TextEditingController();
  String _resultado = '';

  void _gerarConta() {
    setState(() {
      _num1 = _random.nextInt(100) + 1;
      _num2 = _random.nextInt(100) + 1;
      _operador = ['+', '-', 'x', '/'][_random.nextInt(4)];
      _resultado = '';
      _controller.clear();
    });
  }

  void _verificarResultado() {
    double? resultadoEsperado;
    double? resultadoUsuario = double.tryParse(_controller.text);

    switch (_operador) {
      case '+':
        resultadoEsperado = _num1 + _num2.toDouble();
        break;
      case '-':
        resultadoEsperado = _num1 - _num2.toDouble();
        break;
      case 'x':
        resultadoEsperado = _num1 * _num2.toDouble();
        break;
      case '/':
        resultadoEsperado = _num2 != 0 ? _num1 / _num2.toDouble() : null;
        break;
    }

    resultadoEsperado = resultadoEsperado != null ? double.parse(resultadoEsperado.toStringAsFixed(2)) : null;
    resultadoUsuario = resultadoUsuario != null ? double.parse(resultadoUsuario.toStringAsFixed(2)) : null;

    setState(() {
      if (resultadoUsuario == resultadoEsperado) {
        _resultado = 'Você acertou!';
      } else {
        _resultado = 'Você errou. Tente novamente.';
      }
    });
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '$_num1',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    _operador,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '$_num2',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Digite o resultado',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\-?\d*\.?\d*'))],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _verificarResultado,
                  child: Text('Prova'),
                ),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: _gerarConta,
                  child: Text('Gerar conta'),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              _resultado,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 12,
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
