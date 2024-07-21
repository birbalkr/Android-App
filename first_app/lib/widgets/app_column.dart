import 'package:first_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: '4.5'),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: '1287'),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: 'Comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle,
              text: 'Normal',
              iconColor: Colors.yellowAccent.shade400,
            ),
            const SizedBox(
              width: 5,
            ),
            const IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7km',
                iconColor: Colors.lightBlueAccent),
            const SizedBox(
              width: 5,
            ),
            const IconAndTextWidget(
              icon: Icons.access_time,
              text: '32min',
              iconColor: Colors.deepOrangeAccent,
            ),
          ],
        )
      ],
    );
  }
}
