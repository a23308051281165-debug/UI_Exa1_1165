import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  final Color fondoRosa = const Color(0xFFFCE4EC); 
  final Color verdePastel = const Color.fromARGB(255, 157, 177, 158); 
  final Color negroContraste = const Color(0xFFC8E6C9); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoRosa, 
      appBar: AppBar(
        elevation: 0,
        backgroundColor: negroContraste,
        // BOTÓN PARA REGRESAR A INICIO.DART
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            // Regresa a la pantalla anterior (Inicio)
            Navigator.pop(context); 
          },
        ),
        title: const Text(
          "HELADERIA BAD ICE CREAM",
          style: TextStyle(color: Color.fromARGB(255, 75, 128, 107), fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.person_outline, color: Color.fromARGB(255, 0, 0, 0)),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: BoxDecoration(
                color: negroContraste,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 2, width: 40, color: verdePastel), 
                  const SizedBox(height: 15),
                  const Text(
                    "No te los puedes perder!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: verdePastel, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Busca tu sabor...",
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nuestros Sabores",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  const SizedBox(height: 15),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.3, 
                    children: [
                      _botonSabor(context, "Chocolate", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/20210330080108helado-de-chocolate.jpg"),
                      _botonSabor(context, "Fresa", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-fresa.jpg"),
                      _botonSabor(context, "Vainilla", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-vainilla.webp"),
                      _botonSabor(context, "Pistacho", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/images.jfif"),
                      _botonSabor(context, "Menta", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/0d353844b3ab789345ba47fa2c74ff7a.png"),
                      _botonSabor(context, "Napolitano", "https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/images.jpg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Divider(color: Colors.black26),
                  const Text(
                    "Notas",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: verdePastel.withOpacity(0.5),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Promoción válida en sucursales", style: TextStyle(fontWeight: FontWeight.w500)),
                        Icon(Icons.star, color: Colors.orangeAccent),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  // BOTÓN PARA IR A PANTALLA 3 (SIGUIENTE)
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: verdePastel,
                        child: const Icon(Icons.arrow_forward_ios, size: 28, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonSabor(BuildContext context, String titulo, String urlImagen) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: verdePastel, width: 1.5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                urlImagen,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.icecream, size: 50, color: Colors.grey),
              ),
              Container(
                color: Colors.black.withOpacity(0.3),
              ),
              Center(
                child: Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 5, color: Colors.black, offset: Offset(1, 1))],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}