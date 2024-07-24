import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  int maxline;

  SmallText(
      {super.key,
        this.color = const Color.fromRGBO(122, 124, 124, 1.0),
        required this.text,
        this.size = 12,
        this.height=1.2,
        this.maxline = 100});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),
      maxLines: maxline,
    );
  }
}
