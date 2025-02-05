import 'package:flutter/material.dart';

class States extends StatelessWidget {
  const States({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
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