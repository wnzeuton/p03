import 'package:app/intro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intro.dart';
import 'state_management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        textTheme: GoogleFonts.robotoMonoTextTheme().copyWith(
          bodyMedium: GoogleFonts.robotoMono(fontSize: 24, color: Colors.white),
          bodyLarge: GoogleFonts.robotoMono(fontSize: 28, color: Colors.white), 
          titleLarge: GoogleFonts.robotoMono(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white), 
          labelLarge: GoogleFonts.robotoMono(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)), 
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "flutter/dart",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Will Nzeuton & Daniel Park",
              style: Theme.of(context).textTheme.bodyLarge, 
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text(
                'Begin',
                style: Theme.of(context).textTheme.labelLarge, 
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Introduction()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}