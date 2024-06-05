import 'package:aula09/Variaveis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LeituraVariável',
      theme: ThemeData(
        colorScheme: const ColorScheme(brightness: Brightness.light, primary: Colors.black, onPrimary: Colors.white, secondary: Colors.white, onSecondary: Colors.white, error: Colors.blue, onError: Colors.blue, surface: Colors.white, onSurface: Colors.black),
        useMaterial3: true,
        textTheme: GoogleFonts.anonymousProTextTheme(),
      ),
      home: const Variaveis(),
    );
  }
}