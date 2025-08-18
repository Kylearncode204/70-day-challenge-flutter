import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.yellow,
      child: Stack(
        alignment: Alignment.center,
        // textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color.fromARGB(255, 24, 214, 227),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color.fromARGB(255, 8, 8, 211),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
