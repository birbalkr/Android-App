import 'package:first_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.overFlow = TextOverflow.ellipsis,
      this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style:
      GoogleFonts.robotoMono(textStyle:TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize:size==0? Dimensions.font20 :size,
      ),),
    );
  }
}
