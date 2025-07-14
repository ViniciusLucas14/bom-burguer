import 'package:bom_hamburguer/domain/service/cart_service.dart';
import 'package:bom_hamburguer/models/cart_model.dart';

class CartRepository {
  final CartService _cartService = CartService();

  Future<List<CartModel>> getAll() async {
    var items = await _cartService.getAllItems();
    return items
        .map((e) => CartModel(
            id: e.id,
            name: e.name,
            price: e.price,
            images: e.imagePath,
            type: e.type))
        .toList();
  }

  Future<void> add(CartModel item) {
    return _cartService.addItem(item);
  }

  Future<void> remove(CartModel item) {
    return _cartService.removeItem(item);
  }

  Future<void> clear() {
    return _cartService.clearCart();
  }
}
