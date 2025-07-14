import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/ui/viewModel/cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bom_hamburguer/ui/view/header_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    title: Text(item.name),
                    trailing: Text('R\$${item.price.toStringAsFixed(2)}'),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
