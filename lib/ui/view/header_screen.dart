import 'package:bom_hamburguer/main.dart';
import 'package:bom_hamburguer/ui/view/cart_screen.dart';
import 'package:bom_hamburguer/ui/viewModel/cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderScreen extends StatelessWidget implements PreferredSizeWidget {
  const HeaderScreen({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black26,
        title: const Text(
          "Bom Hambúrguer",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.brown,
            letterSpacing: 1.5,
            fontFamily: 'Roboto',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          icon: const Icon(
            Icons.home_mini_outlined,
            color: Colors.brown,
            size: 28,
          ),
          tooltip: 'Menu',
        ),
        actions: [
          Consumer<CartViewModel>(
            builder: (context, cartViewModel, child) {
              final count = cartViewModel.itemCount;

              return IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CartScreen()),
                  );
                },
                icon: Badge(
                  label: Text(
                    count.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: const Icon(Icons.shopping_cart, color: Colors.brown),
                ),
                tooltip: 'Cart',
              );
            },
          ),
        ],
      ),
    );
  }
}
