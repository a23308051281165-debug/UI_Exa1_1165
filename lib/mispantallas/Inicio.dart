import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  // Colores pastel solicitados
  final Color fondoRosa = const Color(0xFFFCE4EC); // Rosa pastel
  final Color verdePastel = const Color(0xFFC8E6C9); // Verde pastel

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Aplicamos el fondo rosa solicitado
      backgroundColor: fondoRosa, 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Título y Nombre
              Column(
                children: [
                  const Text(
                    "HELADERIA BAD ICE CREAM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Serif',
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Valdez Pertez Dana 6-J",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // Ilustración central
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.network(
                    'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/LaGlaciere_Vista_03-1024x683.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // Botón "Sign up" en verde pastel
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // Sustituimos el negro por verde pastel
                        backgroundColor: verdePastel, 
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), 
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                      child: const Text(
                        "Helados",
                        style: TextStyle(
                          color: Colors.white, // Texto blanco para contraste
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      // Acción para login
                    },
                    child: const Text(
                      "deliciosos",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}