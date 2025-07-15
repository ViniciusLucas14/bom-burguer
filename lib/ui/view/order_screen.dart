import 'package:bom_hamburguer/main.dart';
import 'package:bom_hamburguer/ui/view/header_screen.dart';
import 'package:bom_hamburguer/ui/viewModel/order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<OrderViewModel>(context, listen: false).fetchOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderScreen(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<OrderViewModel>(
          builder: (context, viewModel, child) {
            final orders = viewModel.ordersList;
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (orders.isEmpty) {
              return const Center(child: Text('No orders found.'));
            }

            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Subtotal: R\$${order.subtotal.toStringAsFixed(2)}'),
                        Text(
                            'Discount: R\$${order.discount.toStringAsFixed(2)}'),
                        Text('Total: R\$${order.total.toStringAsFixed(2)}'),
                        Text('Payment: ${order.paymentMethod}'),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        tooltip: 'Back to Home',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
