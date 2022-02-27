import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('플러터 위젯'),
        ),
        body: Stack(
          children: [
            Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0)),
            Container(
                color: Colors.black,
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0)),
            Container(
                color: Colors.purple,
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0)),
          ],
        ));
  }
}
