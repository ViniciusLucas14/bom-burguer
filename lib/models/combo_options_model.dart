import 'package:bom_hamburguer/models/item_options_model.dart';
import 'package:bom_hamburguer/models/item_model.dart';

class ComboOption {
  final String name;
  final List<ItemModel> items;
  final double discountPercentage;
  final String imagePath;

  ComboOption({
    required this.name,
    required this.items,
    required this.discountPercentage,
    required this.imagePath,
  });

  double get discountAmount {
    return subtotal * (discountPercentage / 100);
  }

  double get subtotal {
    return items.fold<double>(0, (sum, item) => sum + item.price);
  }

  double get total {
    return subtotal - discountAmount;
  }

  static List<ComboOption> generateCombos(ItemOptionsModel cartOptions) {
    final sandwich = cartOptions.itemSelected;

    final fries = cartOptions.extrasAvailable.firstWhere(
        (e) => e.name.toLowerCase().contains('fries'),
        orElse: () =>
            ItemModel(id: 0, name: '', price: 0, images: '', type: 0));

    final softDrink = cartOptions.extrasAvailable.firstWhere(
        (e) => e.name.toLowerCase().contains('soft drink'),
        orElse: () =>
            ItemModel(id: 0, name: '', price: 0, images: '', type: 0));

    List<ComboOption> combos = [];

    if (fries.id > 0 && softDrink.id > 0) {
      combos.add(ComboOption(
        name: "Combo 1: ${sandwich.name} + ${fries.name} + ${softDrink.name}",
        items: [sandwich, fries, softDrink],
        discountPercentage: 20,
        imagePath: "assets/images/combo/${sandwich.name}1.png",
      ));
    }

    if (softDrink.id > 0) {
      combos.add(ComboOption(
        name: "Combo 2: ${sandwich.name} + ${softDrink.name}",
        items: [sandwich, softDrink],
        discountPercentage: 15,
        imagePath: "assets/images/combo/${sandwich.name}2.png",
      ));
    }

    if (fries.id > 0) {
      combos.add(ComboOption(
        name: "Combo 3:  ${sandwich.name} + ${fries.name}",
        items: [sandwich, fries],
        discountPercentage: 10,
        imagePath: "assets/images/combo/${sandwich.name}3.png",
      ));
    }
    return combos;
  }
}
