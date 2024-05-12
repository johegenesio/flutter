import 'package:flutter/material.dart';
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
    const Text('CARRINHO'),
    const Text('sa'),
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
          textTheme: GoogleFonts.poppinsTextTheme(),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 212, 212, 212),
              title: const Text(
                'E-commerce',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black87),
              ),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 16,
                )
              ],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(4),
                ),
              ),
              centerTitle: true,
              elevation: 2,
            ),
            body: paginas[paginaAtual],
            bottomNavigationBar: NavigationBar(
              indicatorColor: Colors.grey[200],
              backgroundColor: const Color.fromARGB(255, 212, 212, 212),
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: paginaAtual,
              onDestinationSelected: proximaPagina,
              destinations: const [
                NavigationDestination(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.black87,
                  ),
                  label: 'Inicio',
                ),
                NavigationDestination(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black87,
                    ),
                    label: 'Carrinho'),
                NavigationDestination(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black87,
                    ),
                    label: 'Menu'),
                NavigationDestination(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black87,
                    ),
                    label: 'Conta'),
              ],
            )));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(70, 70, 70, 1),
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(70, 70, 70, 1)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 112,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Celular'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: "TV's"),
                  Categoria(
                      imageAssets: '/celular.jpg', textLabel: 'Informática'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Moda'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Esporte'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Lazer'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Lar'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Eletros'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Animais'),
                  Categoria(imageAssets: '/celular.jpg', textLabel: 'Moda'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Divider(
              color: Colors.black26,
              thickness: 0.2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 0, 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Para você',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Divider(
              color: Colors.black26,
              thickness: 0.2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 0, 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.call_made),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Em alta',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                  Produtos(
                      nomeDoProduto:
                          'Notebook Predator Helios Neo PHN16-71-76PL Ci7 13° Windows 11 Home 16GB 512GB SSD RTX 4050 16” WUXGA',
                      preco: '999',
                      imageProduto: '/note.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  const Categoria(
      {super.key, required this.imageAssets, required this.textLabel});

  final String imageAssets;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: SizedBox(
        width: 64,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2, color: Colors.black12, spreadRadius: 1)
                ],
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(imageAssets),
              ),
            ),
            Text(
              textLabel,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}

class Produtos extends StatelessWidget {
  const Produtos(
      {super.key,
      required this.nomeDoProduto,
      required this.preco,
      required this.imageProduto});

  final String nomeDoProduto;
  final String preco;
  final String imageProduto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 2,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageProduto,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    nomeDoProduto,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 12, height: 1.2),
                  ),
                ),
                Text(
                  'R\$$preco',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )),
    );
  }
}