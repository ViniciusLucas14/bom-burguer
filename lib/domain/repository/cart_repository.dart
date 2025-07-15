import 'package:bom_hamburguer/config/database/app_database.dart';
import 'package:bom_hamburguer/domain/service/cart_service.dart';
import 'package:bom_hamburguer/models/cart_model.dart';

class CartRepository {
  final CartService _cartService = CartService();

  Future<List<CartModel>> getAll() async {
    var items = await _cartService.getAllItems();
    return items
        .map((e) => CartModel(
              id: e.id,
              isCombo: e.isCombo,
              name: e.name,
              img: e.img,
              total: e.total,
              subTotal: e.subTotal,
              discount: e.discount,
              itemsList: e.itemsList,
              date: e.date,
            ))
        .toList();
  }

  Future<void> add(CartModel cart) {
    var cartItem = CartTableData(
      id: 0,
      isCombo: cart.isCombo,
      name: cart.name,
      img: cart.img,
      total: cart.total,
      subTotal: cart.subTotal,
      discount: cart.discount,
      itemsList: cart.itemsList,
      date: cart.date,
    );
    return _cartService.addItem(cartItem);
  }

  Future<void> remove(CartModel item) {
    return _cartService.removeItem(item.id!);
  }

  Future<bool> itemAlreadyAdded(CartModel item) {
    return _cartService.itemAlreadyAdded(item.itemsList);
  }

  Future<void> clear() {
    return _cartService.clearCart();
  }

  Future<int> countItemsCart() {
    return _cartService.countItemsCart();
  }
}
