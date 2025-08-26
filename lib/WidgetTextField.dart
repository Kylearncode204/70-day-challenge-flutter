import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Body2(),
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  String textValue = "";

  Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              print("On changed $value");
              textValue = value;
            },
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          Text(textValue)
        ],
      ),
    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String textValue = "";

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(
      () {
        setState(() {
          textValue = textEditingController.text.toUpperCase();
        });

        print("On changed $textValue");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            controller: textEditingController,
            // textAlign: TextAlign.center,
            // textDirection: TextDirection.ltr,
            textInputAction: TextInputAction.go,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            cursorColor: Colors.green,
            cursorWidth: 1,
            //  cursorHeight: 15,
            cursorRadius: Radius.circular(10),
            // maxLength: 3,
            // maxLines: 3,
            // decoration: InputDecoration(
            //     // icon: Icon(Icons.search),
            //     // prefixIcon: Icon(Icons.add),
            //     // prefix: Text("xin chao")
            //     hintText: "text",
            //     hintStyle: TextStyle(fontStyle: FontStyle.italic),
            //     helperText: "hkkkkk",
            //     // label: Icon(
            //     //   Icons.search,
            //     //   color: Colors.red,
            //     // ),
            //     labelText: "label"),
            // decoration: null,
            // decoration: InputDecoration.collapsed(hintText: "naruto"),
            decoration: InputDecoration(
                labelText: "labelText",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16))),

            obscureText: true, // dung *** de che mat khau
            onChanged: (value) {
              print("On changed $value");
              textValue = value;
            },
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          Text(textValue)
        ],
      ),
    );
  }
}
