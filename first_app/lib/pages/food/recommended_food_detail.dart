import 'package:first_app/utils/colors.dart';
import 'package:first_app/utils/dimensions.dart';
import 'package:first_app/widgets/app_icon.dart';
import 'package:first_app/widgets/big_text.dart';
import 'package:first_app/widgets/expendable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.clear),
                AppIcon(icon:Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                child: Center(
                    child: BigText(
                  text: 'Chinese Side',
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(
                  'assets/images/images4.jpg',
                ),
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpendableTextWidget(text: 'child:fit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit:BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.coverfit: BoxFit.covers'),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
                right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.remove, iconSize: Dimensions.iconSize24,iconColor: Colors.white,backgroundColor: AppColors.mainColor,),
                BigText(text: '\$12.88'+ ' X'+ ' 0',color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(icon:Icons.add, iconSize: Dimensions.iconSize24,iconColor: Colors.white,backgroundColor: AppColors.mainColor,),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeight,
            padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height30,
                right: Dimensions.width20,
                left: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(Icons.favorite,color: AppColors.mainColor,)
                  ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width10,
                      right: Dimensions.width10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                  child: BigText(text:"\$10 |Add to cart",color: Colors.white,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
