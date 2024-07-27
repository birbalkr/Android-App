import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/screens/mobile_screen/home_page.dart';

import '../responsive/responsive_layout.dart';
import 'web_screen/web_screen_layout.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(mobileScreenLayout: HomePage(), webScreenLayout: WebScreenLayout());
  }
}
