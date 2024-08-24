
// Widget for "Login to your account" text
import 'package:flutter/material.dart';

class LoginSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Login to your account",
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey[700],
      ),
    );
  }
}