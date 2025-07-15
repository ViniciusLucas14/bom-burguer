import 'dart:math';

import 'package:bom_hamburguer/config/database/app_database.dart';
import 'package:bom_hamburguer/domain/service/order_service.dart';
import 'package:bom_hamburguer/models/Order_model.dart';

class OrderRepository {
  final OrderService _orderService = OrderService();

  Future<void> add(OrderModel orderModel) {
    var order = OrderTableData(
      id: Random().nextInt(9999), //workaround for auto-increment (bad practice)
      total: orderModel.total,
      subTotal: orderModel.subtotal,
      discount: orderModel.discount,
      date: orderModel.date,
      paymentMethod: orderModel.paymentMethod,
    );
    return _orderService.addOrder(order, orderModel.itemsList);
  }

  Future<List<OrderModel>> fetchOrders() {
    return _orderService.fetchOrders();
  }

  Future<int> countOrders() {
    return _orderService.countOrders();
  }
}
