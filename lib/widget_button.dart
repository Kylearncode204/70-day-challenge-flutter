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
      padding: EdgeInsets.all(20),
      child: ElevatedButton.icon(
        //oulinebutton,elavedbutton,
        // child: Text("sieu say gex"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: 10, right: 20, bottom: 0, top: 0),
          // backgroundColor: Color(0xff91e1e1),
          foregroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 10,
          // ignore: deprecated_member_use
          shadowColor: const Color.fromARGB(255, 2, 241, 26).withOpacity(0.5),
          fixedSize: Size(200, 50),
          side: BorderSide(width: 4, color: Colors.blue),
          disabledBackgroundColor: Colors.yellow,
        ),
        onPressed: () {
          print("da nhan nut ban la gay");
        },
        icon: Icon(Icons.add, size: 23),
        label: Text("sieu say gex"),
      ),
    );
  }
}
