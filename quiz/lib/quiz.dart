import 'package:flutter/material.dart';
import 'package:quiz/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestionIndex = 0;
  int point = 0;
  String? selectedAnswer;
  bool? isCorrect;
  final List<Map<String, dynamic>> questions = [
    {
      'question':
          'Qual destes animais é conhecido por sua impressionante capacidade de mudar de cor?',
      'answers': [
        'Golfinho',
        'Polvo',
        'Tubarão',
        'Baleia',
      ],
      'correctAnswer': 'Polvo'
    },
    {
      'question':
          'Qual animal marinho é famoso por sua carapaça dura e vida longa?',
      'answers': [
        'Caranguejo',
        'Estrela do Mar',
        'Tartaruga Marinha',
        'Baleia Azul',
      ],
      'correctAnswer': 'Tartaruga Marinha'
    },
    {
      'question':
          'Que criatura marinha tem tentáculos venenosos e é conhecida por seu corpo gelatinoso?',
      'answers': [
        'Polvo',
        'Lula',
        'Estrela do Mar',
        'Água-viva',
      ],
      'correctAnswer': 'Água-viva',
    },
    {
      'question':
          'Qual destes animais é capaz de produzir luz própria, criando um espetáculo luminoso no fundo do oceano?',
      'answers': [
        'Barracuda',
        'Lula',
        'Peixe-lanterna',
        'Enguia Elétrica',
      ],
      'correctAnswer': 'Peixe-lanterna',
    },
    {
      'question':
          'Qual é o maior peixe do oceano, conhecido por suas enormes dimensões e alimentação à base de plâncton?',
      'answers': [
        'Baleia Azul',
        'Tubarão Branco',
        'Tubarão Martelo',
        'Peixe-palhaço',
      ],
      'correctAnswer': 'Baleia Azul',
    },
  ];
  void handleAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      isCorrect = answer == questions[currentQuestionIndex]['correctAnswer'];
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        selectedAnswer = null;
        isCorrect = null;
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(point: point),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Quiz marítimo!',
              style: GoogleFonts.ibmPlexMono(
                  fontSize: 20, fontWeight: FontWeight.w400))),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            color: Colors.grey[100],
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            child: Center(
              child: Text(
                currentQuestion['question'],
                style: GoogleFonts.delaGothicOne(
                    color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Wrap(
              children: currentQuestion['answers'].map<Widget>((resposta) {
            bool isSelected = selectedAnswer == resposta;
            Color? buttonColor;
            if (isSelected) {
              buttonColor = isCorrect! ? Colors.green : Colors.red;
            } else {
              buttonColor = Colors.grey[800];
            }
            return meuBtn(resposta, () => handleAnswer(resposta), buttonColor);
          }).toList()),
        ],
      ),
    );
  }
}

Widget meuBtn(String resposta, VoidCallback onPressed, Color? color) =>
    Container(
      margin: const EdgeInsets.all(16),
      width: 140,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, padding: const EdgeInsets.all(16)),
        child: Text(
          resposta,
          style: GoogleFonts.ibmPlexMono(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );

class ResultPage extends StatelessWidget {
  final int point;
  const ResultPage({Key? key, required this.point}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Parabéns! Você concluiu o quiz!',
              style:
                  GoogleFonts.delaGothicOne(color: Colors.black, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text('Você Acertou: $point'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const HomePage(), // Navegue para a HomePage
                  ),
                );
              },
              child: const Text('Ir para a HomePage'),
            ),
          ],
        ),
      ),
    );
  }
}
