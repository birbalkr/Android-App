import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/screens/mobile_screen/mobile_screen_layout.dart';
import 'package:whatsapp_clone/screens/web_screen/web_screen_layout.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp_Clone',
      theme: ThemeData.dark().copyWith(

      ),
      home:ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout())

    );
  }
}
