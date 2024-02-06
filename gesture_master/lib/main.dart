import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Master',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Gesture Master'),
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
  bool _changeColor = false;

  void changeColor() {
    _changeColor = !_changeColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 250,
            left: 150,
            child: AnimatedContainer(
              alignment: Alignment.topRight,
              duration: const Duration(milliseconds: 500),
              color: _changeColor ? Colors.red : Colors.greenAccent,
              width: 100,
              height: 100,
            ),
          ),
          Positioned.fill(
              child: GestureDetector(onTap: () {
            setState(() {
              changeColor();
            });
          }, onLongPress: () {
            setState(() {});
          }))
        ],
      ),
    );
  }
}
