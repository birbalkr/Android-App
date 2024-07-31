
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:whatsapp_clone/screens/mobile_screen.dart';



// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => const MyApp(), // Wrap your app
//   ),
// );
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_Clone',
      theme: ThemeData.light(),
      home: const MobileScreen(),
    );
  }
}
