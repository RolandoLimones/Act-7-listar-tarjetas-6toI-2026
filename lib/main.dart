import 'package:flutter/material.dart';

void main() => runApp(AppPetco());

class AppPetco extends StatelessWidget {
  const AppPetco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LasMascotas());
  }
} // fin clase AppPetco

class LasMascotas extends StatelessWidget {
  const LasMascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            // Color de fondo azul claro
            backgroundColor: const Color.fromARGB(255, 139, 2, 37),
            centerTitle: true,
            title: const Text(
              "Petco Contreras",
              style: TextStyle(
                // Color de texto guinda oscuro
                color: Color.fromARGB(255, 122, 183, 253), 
                fontWeight: FontWeight.bold,
              ),
            ),
            // Icono de mascota a la izquierda
            leading: const Icon(
              Icons.pets,
              color: Color.fromARGB(255, 122, 183, 253), 
            ),
            // Acciones a la derecha
            actions: [
              IconButton(
                icon: const Icon(Icons.inventory_2), // Caja
                color: const Color.fromARGB(255, 122, 183, 253), 
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.sell), // Vender / Etiqueta
                color: const Color.fromARGB(255, 122, 183, 253), 
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.medical_services), // Medicina
                color: const Color.fromARGB(255, 122, 183, 253), 
                onPressed: () {},
              ),
            ],
          ),
      body:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // TARJETA 1
                    Card(
                      color: const Color(0xFFFFB3B3), // Rojo pastel
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://raw.githubusercontent.com/RolandoLimones/imagenes-para-flutter-6toI-11-feb-2026/refs/heads/main/mascota1.png'),
                        ),
                        title: Text("Rolando Contreras", style: TextStyle(color: Color(0xFF0047AB), fontWeight: FontWeight.bold)),
                        subtitle: Text("Perro labrador - 2 años", style: TextStyle(color: Color(0xFF0047AB))),
                        trailing: Icon(Icons.favorite, color: Color(0xFF0047AB)),
                      ),
                    ),
                    const SizedBox(height: 10), // Espacio entre tarjetas

                    // TARJETA 2
                    Card(
                      color: const Color(0xFFFFB3B3),
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://raw.githubusercontent.com/RolandoLimones/imagenes-para-flutter-6toI-11-feb-2026/refs/heads/main/mascota2.png'),
                        ),
                        title: Text("Michi", style: TextStyle(color: Color(0xFF0047AB), fontWeight: FontWeight.bold)),
                        subtitle: Text("Perro - 1 año", style: TextStyle(color: Color(0xFF0047AB))),
                        trailing: Icon(Icons.favorite, color: Color(0xFF0047AB)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // TARJETA 3
                    Card(
                      color: const Color(0xFFFFB3B3),
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://raw.githubusercontent.com/RolandoLimones/imagenes-para-flutter-6toI-11-feb-2026/refs/heads/main/mascota3.png'),
                        ),
                        title: Text("Bugs", style: TextStyle(color: Color(0xFF0047AB), fontWeight: FontWeight.bold)),
                        subtitle: Text("Gato Blanco - 6 meses", style: TextStyle(color: Color(0xFF0047AB))),
                        trailing: Icon(Icons.favorite, color: Color(0xFF0047AB)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // TARJETA 4
                    Card(
                      color: const Color(0xFFFFB3B3),
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://raw.githubusercontent.com/RolandoLimones/imagenes-para-flutter-6toI-11-feb-2026/refs/heads/main/mascota4.jpg'),
                        ),
                        title: Text("Coco", style: TextStyle(color: Color(0xFF0047AB), fontWeight: FontWeight.bold)),
                        subtitle: Text("Gato negro - 3 años", style: TextStyle(color: Color(0xFF0047AB))),
                        trailing: Icon(Icons.favorite, color: Color(0xFF0047AB)),
                      ),
                    ),
                  ],
                ),
              ),
            ),  

    );// fin de scaffold
  }
}// fin clase LosAnimales