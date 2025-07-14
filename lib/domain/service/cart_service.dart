import 'package:bom_hamburguer/config/database/app_database.dart';
import 'package:bom_hamburguer/domain/table/cart_table.dart';

class CartService {
  final AppDatabase _db = AppDatabase();

  Future<List<CartTable>> getAllItems() async {
    // fetch from DB or memory
    return [];
  }

  Future<void> addItem(dynamic item) async {
    // save item
  }

  Future<void> removeItem(dynamic item) async {
    // remove item
  }

  Future<void> clearCart() async {
    // clear all items
  }
}
