import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/widget/header_page.dart';
import 'package:instagram/screen/widget/stroy_page.dart';

class InstaHomePage extends StatelessWidget {
  const InstaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderPage(),
        StroyPage(),
      ],
    );
  }
}
