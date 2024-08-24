import 'package:flutter/material.dart';
import 'package:flutter_application_3/login.dart';
// import 'login.dart'; // Uncomment this line if login.dart is in a separate file

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Change this line to display the login screen
      home: const login(),
    );
  }
}