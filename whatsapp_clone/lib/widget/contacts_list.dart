import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                      ),
                      trailing: Text(info[index]['time'].toString()),
                    ),
                  ),
                ),
                Divider(color: dividerColor,
                indent: 85,)
              ],
            );
          },
        ));
  }
}
