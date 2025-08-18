import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Text("sieu say gex"),
                  Text("Dai say gex"),
                  Text("Nhay say gex")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
              child: Row(
                children: [
                  Text("YYYY/MM/DD"),
                  Expanded(
                    flex: 2,
                    child: Text("YYYY"),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("MM"),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("DD"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.amberAccent,
//               width: 100,
//               height: 100,
//             ),
//           ),
//           SizedBox(
//             child: Container(
//               color: Colors.red,
//               width: 100,
//               height: 100,
//             ),
//           ),
//           Container(
//             color: Colors.blue,
//             width: 100,
//             height: 100,
//           )
//         ],
//       ),
//     );
//   }
// } giải thích những thuộc tinh
