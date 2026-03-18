import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 🎨 COLORES DE TU APP
const Color rosaPastel = Color(0xFFF8D7E3);
const Color rosaEncabezado = Color(0xFFE8A0BF);
const Color rosaSuave = Color(0xFFFCE4EC);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 👈 FONDO BLANCO
      appBar: AppBar(
        title: const Text("Danceashley"),
        backgroundColor: rosaEncabezado,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // 💃 TARJETA 1
          tarjetaConImagen(
            "Danceashley",
            "Clases de baile online",
            "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/bailarina1.jpg",
          ),

          const SizedBox(height: 15),

          // 💃 TARJETA 2 (YA CON IMAGEN)
          tarjetaColores(
            "Clases",
            "Salsa • Bachata • Hip Hop",
            imagen: "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/classes.jpg",
          ),

          const SizedBox(height: 15),

          // 💃 TARJETA 3
          tarjetaConImagen(
            "Salsa",
            "Aprende ritmos latinos",
            "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/salsa.jpg",
          ),

          const SizedBox(height: 15),

          // 💃 TARJETA 4
          tarjetaConImagen(
            "Bachata",
            "Clases paso a paso",
            "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/bachata.jpg",
          ),

          const SizedBox(height: 15),

          // 💃 TARJETA 5 (YA CON IMAGEN)
          tarjetaColores(
            "Usuarios",
            "Gestiona tus alumnos",
            imagen: "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/tacata.jpg",
          ),
        ],
      ),
    );
  }
}

// 💃 TARJETA CON IMAGEN
Widget tarjetaConImagen(String titulo, String subtitulo, String imagen) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 5,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: Image.network(
            imagen,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(subtitulo),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

// 🎨 TARJETA (AHORA TAMBIÉN CON IMAGEN OPCIONAL)
Widget tarjetaColores(String titulo, String subtitulo, {String? imagen}) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 5,
    child: Row(
      children: [

        // 👇 SI HAY IMAGEN → SE USA
        if (imagen != null)
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              imagen,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          )
        else
          SizedBox(
            width: 120,
            height: 120,
            child: GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ColoredBox(color: rosaEncabezado),
                ColoredBox(color: rosaSuave),
                ColoredBox(color: Colors.white),
                ColoredBox(color: rosaEncabezado),
              ],
            ),
          ),

        const SizedBox(width: 15),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(subtitulo),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}