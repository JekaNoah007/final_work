import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _length = 70;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: AnimatedContainer(
            height: _length,
            width: _length,
            color: _color,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _length = 100;
                  _color = Colors.green;
                });
              },
              backgroundColor: Colors.green,
            ),
            const SizedBox(width: 15),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _length = 380;
                    _color = Colors.blue;
                  });
                },
                backgroundColor: Colors.blue),
            const SizedBox(width: 15),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _length = 280;
                    _color = Colors.purple;
                  });
                },
                backgroundColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}
