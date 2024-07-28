import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/info.dart';

class CallItems extends StatelessWidget {
  final Icon callIcons;
  final IconData inoutall;

  const CallItems({super.key, required this.callIcons, required this.inoutall});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      reverse: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(bottom: 3.0),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                      Icon(inoutall),
                      Text(
                          info[index]['time'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  leading: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString()),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  trailing: callIcons,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

