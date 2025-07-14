import 'package:bom_hamburguer/domain/repository/cart_repository.dart';
import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/utils/notifications.dart';
import 'package:flutter/material.dart';

class CartViewModel with ChangeNotifier {
  final CartRepository _cartRepository = CartRepository();

  Future<List<CartModel>> getItems() {
    return _cartRepository.getAll();
  }

  Future<void> addItem(CartModel item) async {
    var result = await _cartRepository.itemAlreadyAdded(item);
    if (result) {
      Notifications.toastMessageAlert(
          "Item already added to cart. Please, add another item.");
      return;
    }

    await _cartRepository.add(item);
    Notifications.toastMessageSucess("Item: ${item.name} add to cart");
    notifyListeners();
  }

  Future<void> removeItem(CartModel item) async {
    int cartId = item.id ?? 0;
    if (cartId == 0) {
      Notifications.toastMessageError("Item ID is not set");
    }
    await _cartRepository.remove(item);
    Notifications.toastMessageSucess("Item: ${item.name} removed from cart");
    notifyListeners();
  }

  Future<void> clearCart() async {
    await _cartRepository.clear();
    notifyListeners();
  }
}
