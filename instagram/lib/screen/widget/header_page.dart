import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border_outlined),
                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 5,left: 15),
                  child:Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()
                      ..rotateZ(-25 * 3.1415927 / 180),
                    child: Icon(Icons.send),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
