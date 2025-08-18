import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Body2(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  Body() {
    scrollController.addListener(() {
      print("Scrolling $scrollController");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  Body() {
    scrollController.addListener(() {
      print("Scrolling $scrollController");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 232,
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 11,
          itemBuilder: (context, index) {
            print("ItemBuilder $index");
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),

              //vi co index thi co the cho du lieu vao(mang, danh sach)
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text("Item $index"),
            );
          },
        ));
  }
}
