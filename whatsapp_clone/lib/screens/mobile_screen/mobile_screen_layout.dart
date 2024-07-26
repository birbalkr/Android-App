import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(appBar: AppBar(
      title: Text('WhatsApp',style: TextStyle(color: Colors.grey,fontSize: 20,
      fontWeight: FontWeight.bold),),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
      ],
    ),
      body: ContactsList(),
    ));
  }
}
