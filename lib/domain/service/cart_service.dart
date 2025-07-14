import 'package:bom_hamburguer/config/database/app_database.dart';

class CartService {
  final AppDatabase _db = AppDatabase();

  Future<List<CartTableData>> getAllItems() async {
    return await _db.select(_db.cartTable).get();
  }

  Future<void> addItem(CartTableData item) async {
    await _db.into(_db.cartTable).insert(
          CartTableCompanion.insert(
            name: item.name,
            total: item.total,
            subTotal: item.subTotal,
            discount: item.discount,
            isCombo: item.isCombo,
            img: item.img,
            itemsList: item.itemsList,
            date: item.date,
          ),
        );
  }

  Future<void> removeItem(int id) async {
    await (_db.delete(_db.cartTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> clearCart() async {
    await _db.delete(_db.cartTable).go();
  }

  Future<bool> itemAlreadyAdded(String listItemsId) async {
    final idsToCheck = listItemsId.split(',');
    final cartItems = await _db.select(_db.cartTable).get();

    return cartItems.any((element) {
      final existingIds = element.itemsList.split(',');
      return idsToCheck.any((id) => existingIds.contains(id));
    });
  }
}
