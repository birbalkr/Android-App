
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/contacts_list.dart';

import '../web_screen/web_search_bar.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('WhatsApp',style: TextStyle(color: Colors.green,fontSize: 25,
      fontWeight: FontWeight.bold),),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.qr_code_scanner)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
      ],
    ),
      body:const ContactsList()

    );
  }
}
