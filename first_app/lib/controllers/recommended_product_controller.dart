import 'package:first_app/data/repository/recommended_product_repository.dart';
import 'package:first_app/models/product_model.dart';
import 'package:get/get.dart';


class RecommendedProductController extends GetxController{
  final RecommendedProductRepository recommendedProductRepository;

  RecommendedProductController({required this.recommendedProductRepository});
  List<dynamic> _recommendedProductList=[];
  List<dynamic>get recommendedProductList =>_recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded =>_isLoaded;

  Future<void> getRecommendedProductList()async{
    Response response = await recommendedProductRepository.getRecommendedProductList();
    if(response.statusCode==200){
      _recommendedProductList=[];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded=true;
      update();
    }else{

    }
  }

}