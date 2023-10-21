import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  TextEditingController _textEditingController = TextEditingController();
  var _nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Digite o seu nome"),
              style: const TextStyle(fontSize: 20),
              controller: _textEditingController),
        ),
        ElevatedButton(
          onPressed: () {
            String nome = _textEditingController.text;
            setState(() {
              _nome = nome;
            });
          },
          child: const Text("Salvar"),
        ),
        Padding(
            padding: const EdgeInsets.all(35),
            child: Text(_nome,
                style: const TextStyle(
                  fontSize: 30,
                )))
      ]),
    );
  }
}
