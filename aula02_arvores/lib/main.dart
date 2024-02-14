import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                  'Os CHONPS são elementos químicos fundamentais para a constituição dos seres vivos, representando os principais blocos de construção da matéria orgânica. A sigla refere-se a carbono (C), hidrogênio (H), oxigênio (O), nitrogênio (N), fósforo (P) e enxofre (S). Esses elementos desempenham papéis cruciais nas moléculas biológicas, como proteínas, ácidos nucleicos, carboidratos e lipídios. O carbono é a espinha dorsal das biomoléculas, enquanto o hidrogênio e o oxigênio estão presentes em grande quantidade em moléculas de água. Nitrogênio é vital para aminoácidos e ácidos nucleicos, fósforo compõe o DNA e RNA, e enxofre está presente em aminoácidos e vitaminas. A combinação desses elementos forma a base química da vida, permitindo a complexidade e diversidade das estruturas biológicas. O estudo dos CHONPS é essencial para compreender os processos bioquímicos que sustentam a vida e a interação dos seres vivos com o meio ambiente.'
            ),
            Text('Matemática')
          ],
        ),
      ),
    )
  );
}