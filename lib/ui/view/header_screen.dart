import 'package:bom_hamburguer/main.dart';
import 'package:flutter/material.dart';

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
          IconButton(
            onPressed: () {
              // ação do botão à direita
            },
            icon: const Badge(
              label: Text('4'),
              child: Icon(Icons.list),
            ),
            tooltip: 'Pedidos',
          ),
        ],
      ),
    );
  }
}
