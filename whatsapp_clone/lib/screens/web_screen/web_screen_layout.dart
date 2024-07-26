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
          Expanded(
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
            decoration: BoxDecoration(color: Colors.orange),
            child: Column(
              children: [
                WebChatAppbar(),
                SizedBox(
                  height: 5,
                ),
                Expanded(child: ChatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: dividerColor,
                    )),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Text a Message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                          ),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
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
