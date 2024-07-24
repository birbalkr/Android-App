import 'package:first_app/controllers/cart_controller.dart';
import 'package:first_app/models/product_model.dart';
import 'package:first_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';
import '../models/cart_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  late CartController _cart;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;
  int _quantity = 0;

  // both are same
  // first
//   int get quantity {
//   return _quantity;
// }
//   second
  int get quantity => _quantity;
  int _inCartItem = 0;

  int get inCartItem => _inCartItem + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = cheekQuantity(_quantity + 1);
    } else {
      _quantity = cheekQuantity(_quantity - 1);
    }
    update();
  }

  // quantity is not lessthan 0 and bigger than 20
  int cheekQuantity(int quantity) {
    if (_inCartItem + quantity < 0) {
      // for notification on click
      Get.snackbar("Item", "You can't reduce more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.black);
      if(_inCartItem>0){
        _quantity=-_inCartItem;
        return _quantity;
      }
      return 0;
    } else if (_inCartItem + quantity > 20) {
      Get.snackbar("Item", "You can't add more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.black);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItem = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItem = _cart.getQuantity(product);
    }
  }

  void addItem(ProductModel product) {
    // if(_quantity>0){
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _inCartItem = _cart.getQuantity(product);
    _cart.item.forEach((key, value) {
      print('value ' +
          value.id.toString() +
          ' quantity  ' +
          value.quantity.toString() +
          value.img.toString());
    });
    update();
  }

  int get totalItem{
    return _cart.totalItem;
  }

  List<CartModel>get getItem{
    return _cart.getItem;
  }
}
