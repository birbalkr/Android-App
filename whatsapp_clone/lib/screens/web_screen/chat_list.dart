import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/widget/my_message_card.dart';
import 'package:whatsapp_clone/utils/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            align: Alignment.centerRight,
            bottom: 4,
            icons: Icons.done_all,
            key: key,
          );
        }
        return MyMessageCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
          align: Alignment.centerLeft,
          bottom: 2,
        );
      },
    );
  }
}
