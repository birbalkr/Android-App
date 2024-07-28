import 'package:flutter/material.dart';
class StatusPage extends StatelessWidget {
  final NetworkImage img;
  final String title;
  final String subtitle;
  const StatusPage({super.key, required this.img, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
        CircleAvatar(backgroundImage: img,),
        Column(
          children: [
            Text(title),
            Text(subtitle),
          ],
        ),
        ],
      ),
    );
  }
}
