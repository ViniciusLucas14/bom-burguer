import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/models/combo_options_model.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:flutter/material.dart';

class ItemModalBottomSheet extends StatelessWidget {
  final ItemModel item;
  final List<ItemModel> extraItems;
  const ItemModalBottomSheet(
      {super.key, required this.item, required this.extraItems});

  @override
  Widget build(BuildContext context) {
    final cartOptions = CartOptionsModel(
      itemSelected: item,
      extrasAvailable: extraItems,
    );
    var combos = ComboOption.generateCombos(cartOptions);
    return SizedBox(
      height: 450,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(item.name),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
