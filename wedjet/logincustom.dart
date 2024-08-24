import 'package:flutter/material.dart';

// Widget for "Login" text
class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}