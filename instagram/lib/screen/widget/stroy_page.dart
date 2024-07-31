import 'package:flutter/material.dart';
import 'package:instagram/screen/widget/stroy_page_other.dart';

class StroyPage extends StatelessWidget {
  const StroyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // my story
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
                      width: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 2,
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        StroyPageOther(),


        // other stroy
      ],
    );
  }
}
