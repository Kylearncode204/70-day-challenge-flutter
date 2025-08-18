import 'package:flutter/material.dart';

void main() {
  //khoi dong va cac tinh nang
  runApp(
    MaterialApp(
        home: SafeArea(
      child: Scaffold(
        //scaffold chứa các thành phần body,text
        body: body(),
      ),
    )),
  );
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,

        margin: EdgeInsets.all(20),
        // padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          // borderRadius: BorderRadius.circular(16),
          border: Border.all(
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 10,
            color: Color(0xff91e1e1),
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(10, 10),
            )
          ],
        ),
        transform: Matrix4.rotationZ(0.5),
        child: Text("MANGA"),
      ),
    );
  }
}
