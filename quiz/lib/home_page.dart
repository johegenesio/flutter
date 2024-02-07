import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz',
            style: GoogleFonts.ibmPlexMono(
                fontSize: 20, fontWeight: FontWeight.w400)),
        centerTitle: false,
        actions: const [Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Desafie \nsua mente',
                style: GoogleFonts.delaGothicOne(fontSize: 40)),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Todos',
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/patas.png', width: 50, height: 50),
                        Text('Animais',
                            style: GoogleFonts.ibmPlexMono(color: Colors.white))
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/planeta.png',
                            width: 50, height: 50),
                        Text('Astrologia',
                            style: GoogleFonts.ibmPlexMono(color: Colors.black))
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Image.asset('assets/smartphones.png',
                            width: 50, height: 50),
                        Text('Tecnologia',
                            style: GoogleFonts.ibmPlexMono(color: Colors.black))
                      ],
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Quiz())),
              child: Card(
                  color: Colors.grey[300],
                  elevation: 0,
                  child: Column(children: [
                    Image.asset('assets/golfinho.png', width: 150, height: 150),
                    Text(
                      'Mostre seu conhecimento \nmarítimo',
                      style: GoogleFonts.delaGothicOne(color: Colors.black),
                    ),
                    ListTile(
                      leading:
                          const Icon(Icons.star, color: Colors.amberAccent),
                      title: Text(
                        '1500 pontos',
                        style: GoogleFonts.ibmPlexMono(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    )
                  ])),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 220,
                  width: 200,
                  child: Card(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            '',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Text('Mostre seu conhecimento \nter',
                            style:
                                GoogleFonts.delaGothicOne(color: Colors.black)),
                        ListTile(
                          leading: const Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          title: Text(
                            '1500 pontos',
                            style: GoogleFonts.ibmPlexMono(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          '',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Text('Mostre seus conhecimentos \naéreo',
                          style:
                              GoogleFonts.delaGothicOne(color: Colors.black)),
                      ListTile(
                        leading:
                            const Icon(Icons.star, color: Colors.amberAccent),
                        title: Text('1200 pontos',
                            style: GoogleFonts.ibmPlexMono(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
