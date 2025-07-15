import 'package:bom_hamburguer/enum/item_options_enum.dart';
import 'package:bom_hamburguer/ui/view/header_screen.dart';
import 'package:bom_hamburguer/ui/view/order_screen.dart';
import 'package:bom_hamburguer/ui/view/widgets/items_list.dart';
import 'package:bom_hamburguer/ui/view/widgets/item_options.dart';
import 'package:bom_hamburguer/ui/viewModel/cart_view_model.dart';
import 'package:bom_hamburguer/ui/viewModel/item_list_view_model.dart';
import 'package:bom_hamburguer/ui/viewModel/order_view_model.dart';
import 'package:bom_hamburguer/ui/viewModel/payment_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemListViewModel()),
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => PaymentViewModel()),
        ChangeNotifierProvider(create: (_) => OrderViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bom Hambúrguer Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ItemOptionEnum optionSelected = ItemOptionEnum.sandwich;
  changeOption(ItemOptionEnum option) {
    setState(() {
      optionSelected = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderScreen(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ItemOptions(optionSelectedCallback: changeOption),
            Expanded(
              child: ItemsList(filterByOptionCallback: optionSelected),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const OrderScreen()),
          );
        },
        label: const Text('Orders'),
        icon: const Icon(Icons.list),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
