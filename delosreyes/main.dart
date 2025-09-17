import 'package:flutter/material.dart';

/* Import the Material Design library. It provides widgets and themes following Google's Material Design guidelines. This file is part of the Flutter SDK. */

void main() {
  runApp(const MyApp()); // Initializes the app and attaches the root widget to the screen.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ),
      body: Center(
        child: SingleChildScrollView( // Added in case the content overflows
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/frozen.jpg', // Make sure this path is correct
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'frozen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Donna Ericka Doneza',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
