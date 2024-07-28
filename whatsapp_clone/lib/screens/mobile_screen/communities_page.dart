import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/screens/mobile_screen/widget/mobile_header_page.dart';
import 'package:whatsapp_clone/utils/info.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.grey.shade200,
                    blurStyle: BlurStyle.inner),
              ]),
              child: Column(
                children: [
                  MobileHeaderPage(
                    text: "Communities",
                    qicon: Icons.qr_code_scanner,
                    cicon: Icons.camera_alt_outlined,
                    micon: Icons.more_vert,
                    size: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 12),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Stack(
                            children: [
                              SizedBox(
                                child: Container(
                                  height: 49,
                                  width: 49,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey),
                                  child: Icon(CupertinoIcons.person_3),
                                ),
                              ),
                              Positioned(
                                  right: 5,
                                  bottom: 4,
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
                              'New community',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.grey,
                    blurStyle: BlurStyle.inner),
              ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MySirG Channel',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0.4,),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Colors.grey,
                    blurStyle: BlurStyle.inner),
              ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent.shade100
                          ),
                          child: Icon(CupertinoIcons.speaker_2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('MySirG Channel',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.grey.shade200,
                    blurStyle: BlurStyle.inner),
              ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 20, left: 10, bottom: 12),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Stack(
                            children: [
                              SizedBox(
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(info[3]['profilePic'].toString()),
                                )
                              ),
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
                              'DSA Using Python',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
