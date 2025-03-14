import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: ListaContatos(
        contatos: [
          'Rodrigo',
          'Lara',
          'João',
          'Maria',
          'Pedro',
          'Fernanda',
          'Carlos',
        ],
      ),
    );
  }
}

class ListaContatos extends StatelessWidget {
  ListaContatos({required this.contatos});

  final List<String> contatos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: true,
        leading: Icon(Icons.contact_phone),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => LinhaContato(contato: contatos[index]),
        itemCount: contatos.length,
      ),
    );
  }
}

class LinhaContato extends StatelessWidget {
  const LinhaContato({required this.contato});

  final String contato;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contato),
      leading: Icon(Icons.person),
      trailing: Container(
        width: 60,
        child: Row(
          children: [Icon(Icons.edit), SizedBox(width: 6), Icon(Icons.delete)],
        ),
      ),
    );
  }
}
