import 'package:bom_hamburguer/models/Order_model.dart';
import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/ui/view/widgets/payment_modal.dart';
import 'package:bom_hamburguer/ui/viewModel/cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bom_hamburguer/ui/view/header_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    goToPayment(List<CartModel> items) async {
      var order = OrderModel(
        total: items.fold<double>(0, (prev, el) => prev + el.total),
        subtotal: items.fold<double>(0, (prev, el) => prev + el.subTotal),
        discount: items.fold<double>(0, (prev, el) => prev + el.discount),
        itemsList: items.fold<String>(
            "", (previousValue, element) => element.itemsList),
        paymentMethod: '',
        date: DateTime.now(),
      );
      if (!context.mounted) return;
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return PaymentModal(orderViewModel: order);
        },
      );
    }

    return Scaffold(
      appBar: const HeaderScreen(),
      body: Consumer<CartViewModel>(
        builder: (context, cart, child) {
          return FutureBuilder<List<CartModel>>(
            future: cart.getItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return const Center(child: Text('Erro ao carregar o carrinho'));
              }

              final items = snapshot.data ?? [];

              if (items.isEmpty) {
                return const Center(child: Text('Carrinho vazio'));
              }

              return Column(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Total to pay: ',
                      style: const TextStyle(fontSize: 16),
                      children: [
                        TextSpan(
                          text:
                              'R\$ ${items.fold<double>(0, (prev, el) => prev + el.total).toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                item.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    item.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () {
                                    cart.removeItem(item);
                                  },
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Subtotal: R\$${item.subTotal.toStringAsFixed(2)}'),
                                if (item.discount > 0)
                                  Text(
                                      'Discount: R\$${item.discount.toStringAsFixed(2)}'),
                                Text(
                                    'Total: R\$${item.total.toStringAsFixed(2)}'),
                              ],
                            ),
                            isThreeLine: true,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            icon: const Icon(Icons.delete_outline),
                            label: const Text('Clear Cart'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.red,
                              side: const BorderSide(color: Colors.red),
                            ),
                            onPressed: () {
                              cart.clearCart();
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.payment),
                            label: const Text('Pay Now'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              goToPayment(items);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
