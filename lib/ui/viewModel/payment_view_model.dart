import 'package:bom_hamburguer/domain/repository/order_repository.dart';
import 'package:bom_hamburguer/models/Order_model.dart';
import 'package:bom_hamburguer/utils/notifications.dart';
import 'package:flutter/material.dart';

class PaymentViewModel extends ChangeNotifier {
  final OrderRepository _orderRepository = OrderRepository();
  final TextEditingController nameController = TextEditingController();
  String? _selectedOption;

  final List<String> paymentOptions = ['Credit Card', 'Debit Card', 'Money'];

  String? get selectedOption => _selectedOption;

  void setSelectedOption(String? value) {
    _selectedOption = value;
    notifyListeners();
  }

  bool submitPayment(OrderModel orderModel) {
    if (selectedOption == null) {
      Notifications.toastMessageAlert('Please, choose a payment method');
      return false;
    }
    if (nameController.text.isEmpty) {
      Notifications.toastMessageAlert('Please, enter your name');
      return false;
    }
    orderModel.paymentMethod = selectedOption!;
    _orderRepository.add(orderModel);
    Notifications.toastMessageSucess('Payment successful. Your order is being processed.');
    return true;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
