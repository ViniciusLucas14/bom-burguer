import 'package:bom_hamburguer/domain/repository/order_repository.dart';
import 'package:bom_hamburguer/models/Order_model.dart';
import 'package:flutter/material.dart';

class OrderViewModel extends ChangeNotifier {
  final OrderRepository _orderRepository = OrderRepository();

  List<OrderModel> _ordersList = [];
  List<OrderModel> get ordersList => _ordersList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> fetchOrders() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final data = await _orderRepository.fetchOrders();
      _ordersList = data;
    } catch (e) {
      _errorMessage = 'Failed to load orders: $e';
      _ordersList = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
