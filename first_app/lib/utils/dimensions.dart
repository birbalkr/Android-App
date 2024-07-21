import 'package:get/get.dart';

class Dimensions{


  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // mobile height size like screen height = 844 and container height 320
  // then 844/320=2.64
  static double pageView =screenHeight/2.64;
  static double pageViewContainer =screenHeight/3.84;
  static double pageViewTextContainer =screenHeight/7.03;
  // mobile height size like screen height = 844 and sizebox height 10
  // then 844/10=84.4

  // Dynamic height Padding and Margin

  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;
  static double height100 = screenHeight/8.44;

  // Dynamic width Padding and Margin

  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;
  static double width45 = screenHeight/18.76;
  static double width200 = screenHeight/4.22;



// mobile height size like screen height = 844 and fontSize 20
  // then 844/20=42.2
  // font Size
  static double font16=screenHeight/52.75;
  static double font20=screenHeight/42.2;
  static double font26=screenHeight/32.46;

  // radius
  static double radius15 = screenHeight/56.27;
  static double radius20=screenHeight/42.2;
  static double radius30=screenHeight/28.13;

  // icons Size
  static double iconSize24=screenHeight/35.17;
  static double iconSize16=screenHeight/52.75;

  // list view size
  static double listViewImageSize = screenWidth/3.25;
  static double listViewTextSize = screenWidth/3.9;

  // popular food
static double popularfoodimg = screenHeight/2.41;

// bottom height
static double bottomHeight=screenHeight/7.03;
}
