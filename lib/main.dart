import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'HamburgueriaZ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            const Text(
              'Faça seu pedido!',
              style: TextStyle(fontSize: 20),
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Nome'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (bool? newValue) {
                          if (newValue != null) {
                            setState(() {
                              value = newValue;
                            });
                          }
                        },
                      ),
                      const Text('Texto ao lado do Checkbox'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          setState(() {
                            value = newValue;
                          });
                        }
                      },
                    ),
                    const Text('Texto ao lado do Checkbox'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          setState(() {
                            value = newValue;
                          });
                        }
                      },
                    ),
                    const Text('Texto ao lado do Checkbox'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
