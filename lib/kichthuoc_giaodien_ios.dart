import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      home: SafeArea(
        child: CupertinoPageScaffold(child: Body()),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        "Screen info:${MediaQuery.of(context).devicePixelRatio}, ${MediaQuery.of(context).textScaler}");
    return Container(
      width: 300,
      height: 300,
      color: Color(0xff91e1e1),
      child: Column(
        children: [
          Text("sieu say gex"),
          CupertinoButton(
              color: Color.fromARGB(255, 112, 224, 224),
              onPressed: () {
                print("Button pressed");
              },
              child: (Text("Button"))),
          ElevatedButton(onPressed: () {}, child: Text("sieu say gex"))
        ],
      ),
    );
  }
}
