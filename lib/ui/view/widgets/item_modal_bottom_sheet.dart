import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/models/item_options_model.dart';
import 'package:bom_hamburguer/models/combo_options_model.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:bom_hamburguer/ui/view/widgets/item_combo_cart.dart';
import 'package:bom_hamburguer/ui/view/widgets/item_normal_cart.dart';
import 'package:bom_hamburguer/ui/viewModel/cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemModalBottomSheet extends StatelessWidget {
  final ItemModel item;
  final List<ItemModel> extraItems;

  const ItemModalBottomSheet({
    super.key,
    required this.item,
    required this.extraItems,
  });

  @override
  Widget build(BuildContext context) {
    final cartOptions = ItemOptionsModel(
      itemSelected: item,
      extrasAvailable: extraItems,
    );

    final combos = ComboOption.generateCombos(cartOptions);
    final cart = Provider.of<CartViewModel>(context, listen: false);

    Future<void> comboSelected(ComboOption combo) async {
      var cartItem = CartModel(
        isCombo: true,
        name: combo.name,
        img: combo.imagePath,
        total: combo.total,
        subTotal: combo.subtotal,
        discount: combo.discountAmount,
        itemsList: combo.items.map((e) => e.id).join(','),
        date: DateTime.now(),
      );
      await cart.addItem(cartItem);
      if (!context.mounted) return;
      Navigator.pop(context);
    }

    Future<void> itemNormalSelected(ItemModel item) async {
      var cartItem = CartModel(
        isCombo: false,
        name: item.name,
        img: item.images,
        total: item.price,
        subTotal: item.price,
        discount: 0.0,
        itemsList: item.id.toString(),
        date: DateTime.now(),
      );
      await cart.addItem(cartItem);
      if (!context.mounted) return;
      Navigator.pop(context);
    }

    return SizedBox(
      height: 550,
      child: combos.isEmpty
          ? Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 3.2,
                      children: [
                        ItemNormalCart(
                          const Key('item_0'),
                          item: item,
                          onTap: itemNormalSelected,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  child: Text(
                    'Pick up a combo with discount',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF222222),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 3.2,
                      children: List.generate(
                        combos.length,
                        (index) {
                          final combo = combos[index];
                          return ItemComboCart(
                            Key('item_$index'),
                            item: combo,
                            onTap: comboSelected,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Text(
                      'I don\'t want a combo',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      itemNormalSelected(item);
                    },
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
    );
  }
}
