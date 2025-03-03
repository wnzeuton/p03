import 'package:app/summary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    //print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Counter'),
      ),
      body: SingleChildScrollView(
        child: 
          Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height:300),
            Text(
              'Counter: $_counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height:400),
            ElevatedButton(
              child: const Text('Summary'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sum()),
                );
              },
            ),
            SizedBox(height:400),
          ],
          )
        ),
      ),
    );
  }
}