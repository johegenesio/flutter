import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int paginaAtual = 0;
  List paginas = [
    const Home(),
    const Text(''),
    const Text('CARRINHO'),
    const Text('oi'),
  ];

  void proximaPagina(int index) {
    setState(() {
      paginaAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Debate',
        theme: ThemeData(
          primaryColor: Colors.blue[400],
          textTheme: GoogleFonts.poppinsTextTheme(),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                're.star',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              actions: const [Icon(Icons.search)],
              centerTitle: true,
              elevation: 2,
            ),
            body: paginas[paginaAtual],
            bottomNavigationBar: NavigationBar(
              selectedIndex: paginaAtual,
              onDestinationSelected: proximaPagina,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home_filled), label: 'Inicio'),
                NavigationDestination(
                    icon: Icon(Icons.shopping_cart_rounded), label: 'Carrinho'),
                NavigationDestination(icon: Icon(Icons.menu), label: 'Menu'),
                NavigationDestination(icon: Icon(Icons.person), label: 'Conta')
              ],
            )));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.black),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [CircleAvatar(), Text('Celular')],
                  ),
                  Column(
                    children: [CircleAvatar(), Text('TVs')],
                  ),
                  Column(
                    children: [CircleAvatar(), Text('Informática')],
                  ),
                  Column(
                    children: [CircleAvatar(), Text('Esporte')],
                  ),
                ],
              ),
            ),
          ),
          Wrap(
            children: [
              Column(
                children: [
                  Image.asset(''),
                  Text(''),
                  Text('')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
