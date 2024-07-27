
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.10,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right:  BorderSide(
            color: dividerColor,
          )
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          radius: 20,),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.insert_comment_outlined)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }
}
