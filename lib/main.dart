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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('플러터 위젯'),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴'),
              Tab(
                icon: Icon(Icons.info),
                text: '메뉴2',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.red),
            ],
          )),
    );
  }
}
