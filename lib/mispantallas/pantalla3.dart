import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  // Colores personalizados
  final Color fondoRosa = const Color(0xFFFFE4E1); // Rosa pastel
  final Color verdePastel = const Color(0xFFB2D8B2); // Verde pastel suave

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: verdePastel,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: verdePastel,
        leading: const Icon(Icons.menu, color: Colors.black87),
        title: const Text(
          "BAD ICE CREAM",
          style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.person_outline, color: Colors.black87),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // Sección del título
          Container(
            width: double.infinity,
            color: verdePastel,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 20),
                  onPressed: () => Navigator.pop(context),
                ),
                const Text(
                  "Detalles del Producto",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          
          // Cuerpo principal
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: fondoRosa,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // IMAGEN DEL HELADO
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/20210330080108helado-de-chocolate.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Chocolate Ice Cream",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Nuestro helado de chocolate exclusivo está elaborado con 100% cacao premium. Una experiencia geométrica y deliciosa.",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 25),
                    
                    // --- NUEVAS 3 SECCIONES DE TEXTO (COMO EN LA IMAGEN) ---
                    _buildDetailRow("Ingredientes", "Cacao puro, leche orgánica y trozos de chocolate amargo."),
                    const SizedBox(height: 15),
                    _buildDetailRow("Calorías", "Aproximadamente 250 kcal por porción de 100g."),
                    const SizedBox(height: 15),
                    _buildDetailRow("Presentación", "Cono de waffle artesanal crujiente hecho en casa."),
                    
                    const SizedBox(height: 30),

                    // Bloques de información destacada (Precio y Stock)
                    _buildHighlightBlock("Precio Final", "\$59.99"),
                    const SizedBox(height: 15),
                    _buildHighlightBlock("Disponibilidad", "En Stock"),
                    
                    const SizedBox(height: 20),
                    const Center(
                      child: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.black26),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para las 3 secciones de descripción detallada
  Widget _buildDetailRow(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            description,
            style: const TextStyle(fontSize: 13, color: Colors.black87, height: 1.4),
          ),
        ),
      ],
    );
  }

  // Widget para los bloques verdes de precio/stock
  Widget _buildHighlightBlock(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.black38)),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: verdePastel,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}