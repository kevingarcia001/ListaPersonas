import 'package:flutter/material.dart';
import 'package:listas/pages/persona1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Creamos la lista perosnas
  final List<Persona> _personas = [
    Persona('Kevin', 'García', 156144),
    Persona('Jose', 'Lopéz', 2564744),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView.builder(
            itemCount: _personas
                .length, //Rango de cuando debe de parar de iterar la lista
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Persona1(_personas[index])));
                },
                title: Text(
                    "${_personas[index].nombre} ${_personas[index].apellido}"),
                subtitle: Text(_personas[index].id.toString()),
                leading: CircleAvatar(
                  child: Text(_personas[index].nombre.substring(0, 1)),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }
}

//Creamos una clase
class Persona {
  late String nombre;
  late String apellido;
  late int id;

//Constructor

  Persona(nombre, apellido, id) {
    this.nombre = nombre;
    this.apellido = apellido;
    this.id = id;
  }
}
