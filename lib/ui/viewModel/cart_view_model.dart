import 'package:bom_hamburguer/domain/repository/cart_repository.dart';
import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:bom_hamburguer/models/item_model.dart';

class CartViewModel with ChangeNotifier {
  final CartRepository _cartRepository = CartRepository();

  Future<List<CartModel>> getItems() {
    return _cartRepository.getAll();
  }

  Future<void> addItem(CartModel item) async {
    await _cartRepository.add(item);
    notifyListeners();
  }

  Future<void> removeItem(CartModel item) async {
    await _cartRepository.remove(item);
    notifyListeners();
  }

  Future<void> clearCart() async {
    await _cartRepository.clear();
    notifyListeners();
  }

  /// Optional: remove by index
  // void removeAt(int index) {
  //   if (index >= 0 && index < items.length) {
  //     _cartRepository.getAll().removeAt(index);
  //     notifyListeners();
  //   }
  // }

  /// Optional: check if item is already in the cart
  bool contains(CartModel item) {
    return true;
  }
}
