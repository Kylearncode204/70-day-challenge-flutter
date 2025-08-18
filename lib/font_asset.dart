import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Textdemo(),
          ),
        ),
      ),
    ),
  );
}

class Textdemo extends StatelessWidget {
  const Textdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Cố Thương Sinh, một kẻ mang thân phận bí ẩn, quay lại giang hồ để ....."
      "Giữa tranh đấu quyền lực, âm mưu chồng chất, y buộc phải đối mặt với kẻ..."
      "cả những người từng là bằng hữu. Khi ánh kiếm lóe lên, hắn đã ...",
      // maxLines: 3,
      // overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      // textDirection: Te
      // textDirection.rtl,
      // softWrap: true,
      textScaler: TextScaler.linear(1.3),
      style: TextStyle(
        color: Color.fromARGB(255, 8, 193, 17),
        backgroundColor: Colors.yellow,
        fontSize: 13,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 2,
        letterSpacing: 2,
        wordSpacing: 2,
        height: 1.5,
        fontFamily: 'Arial',
      ),
    );
  }
}
