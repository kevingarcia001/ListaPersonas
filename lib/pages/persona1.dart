import 'package:flutter/material.dart';
import 'package:listas/main.dart';

class Persona1 extends StatelessWidget {
  final Persona persona;
  const Persona1(this.persona, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre: ${persona.nombre}'),
            Text('Apellido: ${persona.apellido}'),
            Text('ID: ${persona.id}'),
          ],
        ),
      ),
    );
  }
}
