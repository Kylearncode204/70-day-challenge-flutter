import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: Page()),
  ));
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // phải khớp với số Tab và số TabBarView children
      child: Scaffold(
        appBar: AppBar(
          title: const Text("sieu say gex"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: Colors.blue),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.settings, color: Colors.red),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.person, color: Colors.yellow),
                text: "User",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            Soba(),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: const Text("First Screen"),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: const Text("Second Screen"),
      ),
    );
  }
}

class Soba extends StatelessWidget {
  const Soba({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("sieu say gex"),
            Text("Dai say gex"),
            Text("Nhay say gex"),
          ],
        ),
      ),
    );
  }
}
