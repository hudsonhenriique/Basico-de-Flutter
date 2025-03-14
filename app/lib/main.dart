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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Testando Hot Restart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaNomes = [
      'Rodrigo',
      'Henrique',
      'Marilaine',
      'Joana',
      'Sauble',
      'Murguelou',
      'Sauble',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text(listaNomes[index]),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  children: [
                    // Icon(Icons.delete),
                    SizedBox(width: 4),
                    GestureDetector(
                      // ignore: avoid_print
                      onTap: () => {print('Deletando...')},
                      child: Icon(Icons.delete),
                    ),
                    Icon(Icons.edit),
                  ],
                ),
              ),
            ),
        itemCount: listaNomes.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.linked_camera),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
