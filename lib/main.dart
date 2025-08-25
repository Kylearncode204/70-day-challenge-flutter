import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(child: Page()),
  ));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
