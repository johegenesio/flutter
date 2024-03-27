import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RolarDado extends StatefulWidget {
  const RolarDado({super.key});

  @override
  State<RolarDado> createState() => _RolarDadoState();
}

class _RolarDadoState extends State<RolarDado> {
  var dadoAtivado = 'assets/dado-1.png';
  var dadoRolado = 2;
  void rolarDadoAgora() {
    setState(() {
      dadoAtivado = 'assets/dado-1.png';
      dadoRolado = Random().nextInt(6) + 1;
      dadoAtivado = 'assets/dado-$dadoRolado.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Rode o dado',
            style: GoogleFonts.anonymousPro(color: Colors.white, fontSize: 48),
          ),
        ),
        Image.asset(
          dadoAtivado,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 200,
          height: 60,
          child: ElevatedButton(
              onPressed: () {
                rolarDadoAgora();
              },
              child: Text(
                'Rolar dado',
                style:
                    GoogleFonts.anonymousPro(color: Colors.black, fontSize: 24),
              )),
        )
      ],
    );
  }
}
