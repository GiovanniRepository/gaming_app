import 'package:flutter/material.dart';
import 'pages/homeview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homeview(),
    );
  }
}


//Todo: rendere tutta l'app responsive automaticamente
//Todo: creare un tema personalizzato
//Todo: gestire le cartelle e i file
//Todo: creare un file di costanti per i colori
//Todo: aggiungere assets