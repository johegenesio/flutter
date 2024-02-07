import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Quiz marítimo!',
          style: GoogleFonts.ibmPlexMono(
              fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: 400,
          )
        ],
      ),
    );
  }
}

Widget meuBtn(String resposta) => Container(
      margin: const EdgeInsets.all(16),
      width: 160,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(resposta),
      ),
    );
