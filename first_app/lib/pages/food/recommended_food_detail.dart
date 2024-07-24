import 'package:first_app/controllers/popular_product_controller.dart';
import 'package:first_app/controllers/recommended_product_controller.dart';
import 'package:first_app/routes/route_helper.dart';
import 'package:first_app/utils/colors.dart';
import 'package:first_app/utils/dimensions.dart';
import 'package:first_app/widgets/app_icon.dart';
import 'package:first_app/widgets/big_text.dart';
import 'package:first_app/widgets/expendable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/cart_controller.dart';
import '../../utils/app_constants.dart';
import '../cart/cart_page.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;

  const RecommendedFoodDetail({required this.pageId, super.key});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
        Get.find<PopularProductController>().initProduct(product, Get.find<CartController>());
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // hide Auto back button
              automaticallyImplyLeading: false,
              toolbarHeight: 80,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getinitial());
                    },
                    child: AppIcon(icon: Icons.clear),
                  ),

                  // AppIcon(icon: Icons.shopping_cart_outlined),
                  GetBuilder<PopularProductController>(
                      builder: (controItemNumber) {
                        return Stack(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.to(() => CartPage());
                                },
                                child: AppIcon(icon: Icons.shopping_cart_outlined)),
                            Get.find<PopularProductController>().totalItem >= 1
                                ? Positioned(
                              right: 0,
                              top: 0,
                              child: AppIcon(
                                icon: Icons.circle,
                                size: 20,
                                iconColor: Colors.transparent,
                                backgroundColor: AppColors.mainColor,
                              ),
                            )
                                : Container(),
                            Get.find<PopularProductController>().totalItem >= 1
                                ? Positioned(
                                right: 5,
                                top: 0,
                                child: BigText(
                                  text: Get.find<PopularProductController>()
                                      .totalItem
                                      .toString(),
                                  size: 12,
                                  color: Colors.white,
                                ))
                                : Container()
                          ],
                        );
                      })
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                      child: BigText(
                    text: product.name,
                    size: Dimensions.font26,
                  )),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: NetworkImage(AppConstants.BASE_URL +
                      AppConstants.Upload_url +
                      product.img!),
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: ExpendableTextWidget(text: product.description!),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar:
            GetBuilder<PopularProductController>(builder: (conteroller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20 * 2.5,
                  right: Dimensions.width20 * 2.5,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        conteroller.setQuantity(false);
                      },
                      child: AppIcon(
                        icon: Icons.remove,
                        iconSize: Dimensions.iconSize24,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                      ),
                    ),

                    BigText(
                      text: '₹${product.price} X ${conteroller.inCartItem}',
                      color: AppColors.mainBlackColor,
                      size: Dimensions.font26,
                    ),
                    GestureDetector(
                      onTap: () {
                        conteroller.setQuantity(true);
                      },
                      child: AppIcon(
                        icon: Icons.add,
                        iconSize: Dimensions.iconSize24,
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                      ),
                    ),
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
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white),
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.mainColor,
                        )),
                    GestureDetector(
                      onTap: (){
                        conteroller.addItem(product);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: Dimensions.height20,
                            bottom: Dimensions.height20,
                            left: Dimensions.width10,
                            right: Dimensions.width10),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                            color: AppColors.mainColor),
                          child: BigText(
                            text: "₹${product.price}|Add to cart",
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
