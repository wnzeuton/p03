import 'package:flutter/material.dart';

class Developing extends StatelessWidget {
  const Developing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developing Apps in Flutter'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white
      ),
      body: Center(
        child:
          const Text("Blah blah blah")
      ),
    );
  }
}