import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/widget/mobile_header_page.dart';

import '../../../utils/info.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  final count = info.length - 3;

  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MobileHeaderPage(
              text: 'Updates',
              qicon: Icons.qr_code_scanner,
              cicon: Icons.camera_alt_outlined,
              micon: Icons.phone,
              sicon: Icons.search,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                'Status',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, bottom: 12),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: Stack(
                      children: [
                        const SizedBox(
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            bottom: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                              child: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My status',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Tap to add status update',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Recent updates'),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: count - 4,
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
                            child: Text(
                              info[index]['time'].toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          leading: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              ),
                              color: Colors.white,
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  info[index]['profilePic'].toString()),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Viewed update',
                    style: TextStyle(fontSize: 14),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 24,
                  )
                ],
              ),
            ),
            ListView.builder(
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
                            child: Text(
                              info[index]['time'].toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          leading: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 3,
                              ),
                              // color: Colors.green,
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  info[index]['profilePic'].toString()),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
