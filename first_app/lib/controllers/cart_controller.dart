import 'package:first_app/data/repository/cart_repo.dart';
import 'package:first_app/models/cart_model.dart';
import 'package:first_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  Map<int, CartModel> _item = {};

  Map<int, CartModel> get item => _item;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity=0;
    if (_item.containsKey(product.id!)) {
      _item.update(product.id!, (value) {
        totalQuantity=value.quantity!+quantity;
        return CartModel(
          id: product.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          time: DateTime.now().toString(),
          isExit: true,
        );
      });

      if(totalQuantity<=0){
        _item.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _item.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            img: product.img,
            quantity: quantity,
            time: DateTime.now().toString(),
            isExit: true,
          );
        });
      } else {
        Get.snackbar("Item", "Add at least 1 item",
            backgroundColor: AppColors.mainColor, colorText: Colors.black);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_item.containsKey(product.id)) {
      return true;
    } else {
      return false;
    }
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_item.containsKey(product.id)) {
      _item.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItem{
    var totalQuantity=0;
    _item.forEach((key, value){
      totalQuantity+= value.quantity!;
    });
    return totalQuantity;
  }

  List<CartModel> get getItem{
    return _item.entries.map((e){
      return e.value;
    }).toList();
  }
}
