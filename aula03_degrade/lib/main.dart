import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 233, 233, 222),
              Color.fromARGB(255, 90, 88, 88),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text('Hello World',
                      style: TextStyle(
                          fontFamily: 'Anonymous',
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)
                      ),
                  Image.asset('assets/gatona.jpg')
              ],
            )
          ),
        ),
      )
    )
  );
}
