import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Variaveis extends StatefulWidget {
  const Variaveis({super.key});

  @override
  State<Variaveis> createState() => _VariaveisState();
}

class _VariaveisState extends State<Variaveis> {
  final TextEditingController _n1 = TextEditingController();
  final TextEditingController _n2 = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text(
            'Soma',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _n1,
                  style: const TextStyle(fontSize: 20),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      labelText: 'Número 1',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(fontSize: 20)),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'^\-?\d*\.?\d*'))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _n2,
                  style: const TextStyle(fontSize: 20),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                      labelText: 'Número 2',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(fontSize: 20)),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'^\-?\d*\.?\d*'))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final double num1 = double.tryParse(_n1.text) ?? 0;
                            final double num2 = double.tryParse(_n2.text) ?? 0;
                            _result = num1 + num2;
                          });
                        },
                        child: const Text('Somar')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final double num1 = double.tryParse(_n1.text) ?? 0;
                            final double num2 = double.tryParse(_n2.text) ?? 0;
                            _result = num1 - num2;
                          });
                        },
                        child: const Text('Subtrair')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final double num1 = double.tryParse(_n1.text) ?? 0;
                            final double num2 = double.tryParse(_n2.text) ?? 0;
                            _result = num1 * num2;
                          });
                        },
                        child: const Text('Multiplicar')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final double num1 = double.tryParse(_n1.text) ?? 0;
                            final double num2 = double.tryParse(_n2.text) ?? 0;
                            _result = num1 / num2;
                          });
                        },
                        child: const Text('Dividir')),
                  ),
                ],
              ),
              _result <= 5
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Resultado: $_result',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Resultado: $_result',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ));
  }
}
