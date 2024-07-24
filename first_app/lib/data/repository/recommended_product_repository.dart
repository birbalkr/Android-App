import 'package:first_app/data/api/api_client.dart';
import 'package:first_app/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepository extends GetxService{
  final ApiClient apiClient;
  RecommendedProductRepository({required this.apiClient});


  Future<Response> getRecommendedProductList()async{
    return await apiClient.getData(AppConstants.Recommended_product_url );
  }

}