import 'package:first_app/controllers/cart_controller.dart';
import 'package:first_app/controllers/popular_product_controller.dart';
import 'package:first_app/controllers/recommended_product_controller.dart';
import 'package:first_app/data/api/api_client.dart';
import 'package:first_app/data/repository/cart_repo.dart';
import 'package:first_app/data/repository/popular_product_repo.dart';
import 'package:first_app/data/repository/recommended_product_repository.dart';
import 'package:first_app/utils/app_constants.dart';
import 'package:get/get.dart';


Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseurl: AppConstants.BASE_URL));

// repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepository(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());


  // controllers
  Get.lazyPut(()=>PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(()=>RecommendedProductController(recommendedProductRepository: Get.find()));
  Get.lazyPut(()=>CartController(cartRepo: Get.find()));

}
