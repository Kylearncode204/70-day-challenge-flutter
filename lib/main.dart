import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: Page1(4)),
  ));
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  int count;
  Page1(this.count, {super.key});
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
            ));
  }
}
