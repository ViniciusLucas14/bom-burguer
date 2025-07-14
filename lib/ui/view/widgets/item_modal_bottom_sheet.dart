import 'package:bom_hamburguer/models/item_options_model.dart';
import 'package:bom_hamburguer/models/combo_options_model.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:bom_hamburguer/ui/view/cart_screen.dart';
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

    // ✅ Get the CartViewModel from Provider
    final cart = Provider.of<CartViewModel>(context, listen: false);

    void comboSelected(ComboOption combo) {
      for (final i in combo.items) {
       // cart.addItem(i);
      }

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const CartScreen()),
      );
    }

    void singleItemSelected(ItemModel item) {
      //cart.addItem(item);

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const CartScreen()),
      );
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
                          onTap: singleItemSelected,
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
                      singleItemSelected(item);
                    },
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
    );
  }
}