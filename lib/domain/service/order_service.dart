import 'package:bom_hamburguer/config/database/app_database.dart';
import 'package:bom_hamburguer/models/Order_model.dart';

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

  Future<List<OrderModel>> fetchOrders() async {
    final orders = await _db.select(_db.orderTable).get();
    final orderItems = await _db.select(_db.orderItemTable).get();
    return orders.map((order) {
      final itemsList = orderItems
          .where((item) => item.orderId == order.id)
          .map((item) => item.itemId.toString())
          .join(',');

      return OrderModel(
        id: order.id,
        total: order.total,
        subtotal: order.subTotal,
        discount: order.discount,
        date: order.date,
        paymentMethod: order.paymentMethod,
        itemsList: itemsList,
      );
    }).toList();
  }

  Future<int> countOrders() async {
    return (await _db.select(_db.orderTable).get()).length;
  }
}
