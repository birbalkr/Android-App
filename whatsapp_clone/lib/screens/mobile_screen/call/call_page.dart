
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen/call/call_items.dart';
import 'package:whatsapp_clone/screens/mobile_screen/widget/mobile_header_page.dart';


class CallPage extends StatelessWidget {
   const CallPage({super.key});


  @override
  Widget build(BuildContext context) {
    // var methodhere = Get.find<CallControllers>().isEven(info.length as int);
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MobileHeaderPage(text: 'Call', qicon: Icons.qr_code_scanner, cicon: Icons.camera_alt_outlined, micon: Icons.more_vert,sicon: Icons.search,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Favorites'),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      ),
                      child: const Icon(Icons.favorite,color: Colors.white,),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text('Add to Favorites',style: TextStyle(fontSize: 15),),)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10,top: 15,bottom: 10),
                  child: const Text('Reacent',style: TextStyle(fontSize: 18),),),
                const CallItems(callIcons: Icon(Icons.videocam_outlined),inoutall: Icons.call_made,),
                const CallItems(callIcons: Icon(Icons.videocam_outlined),inoutall: Icons.call_made,),
              ],
            ),
        ),
      ),
    );
  }
}

