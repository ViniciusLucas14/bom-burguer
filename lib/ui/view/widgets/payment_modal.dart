import 'package:bom_hamburguer/models/Order_model.dart';
import 'package:bom_hamburguer/ui/viewModel/payment_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentModal extends StatelessWidget {
  final OrderModel orderViewModel;
  const PaymentModal({super.key, required this.orderViewModel});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PaymentViewModel>(context);

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      contentPadding: const EdgeInsets.all(20),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Payment',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: viewModel.nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: viewModel.selectedOption,
              items: viewModel.paymentOptions.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: viewModel.setSelectedOption,
              decoration: const InputDecoration(
                labelText: 'Method of Payment',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => {
                  if (viewModel.submitPayment(orderViewModel))
                    Navigator.pop(context, true)
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
