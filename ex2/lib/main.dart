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
  final TextEditingController soma = TextEditingController();
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
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Digite um numero"),
                style: const TextStyle(fontSize: 20),
                controller: _value1,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        int value1 = int.parse(_value1.text);
                        int value2 = int.parse(_value2.text);
                        int value3 = int.parse(_value3.text);
                        soma.text = (value1 + value2 + value3).toString();
                        print(soma.text);
                      });
                    },
                    child: const Text("Somar"))),
            Text(soma.text,
                style: const TextStyle(
                  fontSize: 30,
                )),
          ],
        ),
      ),
    );
  }
}
