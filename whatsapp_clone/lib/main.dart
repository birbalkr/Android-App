import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }
import 'package:device_preview/device_preview.dart';
import 'package:whatsapp_clone/screens/mobile_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const MobileScreen(),
    );
  }
}
