import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  final TextEditingController _value1 = TextEditingController();
  final TextEditingController _value2 = TextEditingController();
  final TextEditingController _value3 = TextEditingController();
  final TextEditingController _soma = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value1,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    int value1 = int.parse(_value1.text);
                    int value2 = int.parse(_value2.text);
                    int value3 = int.parse(_value3.text);
                    int _soma = value1 + value2 + value3;
                  });
                },
                child: const Text("Somar")),
            Text("A soma deu $_soma")
          ],
        ),
      ),
    );
  }
}
