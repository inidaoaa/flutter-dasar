import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar flutter',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 1;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void decrementCounter() {
    setState(() {
     if (_counter > 1) _counter--;
    });
  }

  Widget build(BuildContext context) {
    double fontSize = 20 + _counter * 2.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hitungan ke : '),
            Text('$_counter', style: TextStyle(fontSize: _counter.toDouble()),
            ),
            Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
              onPressed: () {
                incrementCounter();
              },
              child: Icon(Icons.add),
            )
            ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
              onPressed: () {
                decrementCounter();
              },
              child: Icon(Icons.remove),
            )
            )
          ],
        ),
      ),
    );
  }
}
