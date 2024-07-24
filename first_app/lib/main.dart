
import 'package:first_app/controllers/popular_product_controller.dart';
import 'package:first_app/controllers/recommended_product_controller.dart';
import 'package:first_app/pages/home/main_food_page.dart';
import 'package:first_app/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}
// when cheek all diveces
// void main() {
//   runApp(DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context)=>const MyApp()));
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages:RouteHelper.routes,
    );
  }
}
