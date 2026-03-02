import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Heladería Sweet Dreams',
    // Definición de rutas nombradas
    initialRoute: '/',
    routes: {
      '/': (context) => const Inicio(),
      '/pantalla2': (context) => const Pantalla2(),
      '/pantalla3': (context) => const Pantalla3(),
    },
  ));
}