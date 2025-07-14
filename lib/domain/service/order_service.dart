import 'package:bom_hamburguer/config/database/app_database.dart';

class OrderService {
  final AppDatabase _db = AppDatabase();
  Future<bool> addOrder(OrderTableData order, String itemsId) async {
    final idsToCheck = itemsId.split(',');

    var items = (await _db.select(_db.itemTable).get())
        .where((element) => idsToCheck.contains(element.id.toString()))
        .toList();
    await _db.into(_db.orderTable).insert(order);
    
    for (var item in items) {
      await _db.into(_db.orderItemTable).insert(
            OrderItemTableCompanion.insert(
              orderId: order.id,
              name: "",
              price: item.price,
              itemId: item.id,
              quantity: 1,
            ),
          );
    }
    return true;
  }
}
