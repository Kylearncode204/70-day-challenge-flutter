import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: TextRich(),
        ),
      ),
    ),
  );
}

Center TextRich() {
  return Center(
    child: RichText(
      text: TextSpan(children: [
        TextSpan(text: "say gex"),
        TextSpan(
          text: "sieu say gex",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              decoration: TextDecoration.underline),
          onEnter: (event) => print("Onenter"),
          onExit: (event) => print("Onend"),
        ),
      ]),
    ),
  );
}
