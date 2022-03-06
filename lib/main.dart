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
    final items = List.generate(100, (i) => i).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('플러터 위젯'),
        ),
        body: SingleChildScrollView(
            child: ListBody(children: items.map((i) => Text('$i')).toList())));
  }
}
