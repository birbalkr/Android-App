import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/widget/chart_page.dart';
import 'package:whatsapp_clone/screens/widget/chat_list.dart';
import 'package:whatsapp_clone/screens/web_screen/web_chat_appbar.dart';
import 'package:whatsapp_clone/screens/web_screen/web_profile_bar.dart';
import 'package:whatsapp_clone/screens/web_screen/web_search_bar.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/widget/contacts_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          ChartPage(),
        ],
      ),
    );
  }
}
