import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileHeaderPage extends StatelessWidget {
  final String text;
  final IconData qicon;
  final IconData cicon;
  final sicon;
  final IconData micon;
  final double? size;


  const MobileHeaderPage(
      {super.key,
      required this.text,
      required this.qicon,
      required this.cicon,
      this.sicon,
        this.size=0,
      required this.micon});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(fontSize: 26),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(qicon),
            SizedBox(width: 13,),
            Icon(cicon),
            SizedBox(width:size==0?13:size,),
            Icon(sicon),
            SizedBox(width:size==0?13:size,),
            Icon(micon),
            SizedBox(width: 13,),
          ],
        )
      ],
    ),);
  }
}
