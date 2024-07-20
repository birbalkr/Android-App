
import 'package:first_app/home/food_page_body.dart';
import 'package:first_app/utils/colors.dart';
import 'package:first_app/widgets/big_text.dart';
import 'package:first_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          // Showing the header
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Column(
                  children: [
                    BigText(text: 'India',color: AppColors.mainColor,size: 30,),
                    Row(
                      children: [
                        SmallText(text: 'Gaya',color: Colors.black54,),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )  
                  ]
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor),
                  child: const Icon(Icons.search,color: Colors.white,),
                )
              ],
            ),
          ),
          // showing the body
          const FoodPageBody(),
          ],
      ),
    );
  }
}