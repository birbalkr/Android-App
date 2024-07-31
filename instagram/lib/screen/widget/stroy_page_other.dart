import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StroyPageOther extends StatelessWidget {
  const StroyPageOther({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Colors.red
          ),
        );
      },
      itemCount: 3,
    );
  }
}
