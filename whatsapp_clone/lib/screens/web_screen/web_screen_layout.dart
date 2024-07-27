import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/web_screen/chat_list.dart';
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
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: const BoxDecoration(color: Colors.orange),
            child: Column(
              children: [
                const WebChatAppbar(),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(child:  ChatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border:  Border(
                        bottom:  BorderSide(
                      color: dividerColor,
                    )),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Text a Message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20),
                          ),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
