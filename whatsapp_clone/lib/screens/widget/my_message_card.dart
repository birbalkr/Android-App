
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String time;
  final Alignment align;
  final  bottom;
  final icons;

  const MyMessageCard({super.key, required this.message, required this.time, required this.align, this.bottom, this.icons,});

  @override
  Widget build(BuildContext context) {
    var icon = icons;
    return SingleChildScrollView(
      child: Align(
        alignment: align,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 45,
          ),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: messageColor,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                  child: Text(
                    message,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Positioned(
                    right: 10,
                    bottom: bottom!,
                    child: Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(fontSize: 13, color: Colors.white60),
                        ),
                        const SizedBox(width: 5,),
                        Icon(icon,color: Colors.green,),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
