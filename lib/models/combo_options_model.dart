import 'package:bom_hamburguer/models/cart_model.dart';
import 'package:bom_hamburguer/models/item_model.dart';

class ComboOption {
  final String name;
  final List<ItemModel> items;
  final double discountPercentage;
  final double total;
  final double subtotal;
  final String imagePath;

  ComboOption({
    required this.name,
    required this.items,
    required this.discountPercentage,
    required this.total,
    required this.subtotal,
    required this.imagePath,
  });

  static List<ComboOption> generateCombos(CartOptionsModel cartOptions) {
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
        total: (sandwich.price + fries.price + softDrink.price) * 0.80,
        subtotal: sandwich.price + fries.price + softDrink.price,
        imagePath: "",
      ));
    }

    if (softDrink.id > 0) {
      combos.add(ComboOption(
        name: "Combo 2: ${sandwich.name} + ${softDrink.name}",
        items: [sandwich, softDrink],
        discountPercentage: 15,
        total: (sandwich.price + softDrink.price) * 0.85,
        subtotal: sandwich.price + softDrink.price,
        imagePath: "",
      ));
    }

    if (fries.id > 0) {
      combos.add(ComboOption(
        name: "Combo 3:  ${sandwich.name} + ${fries.name}",
        items: [sandwich, fries],
        discountPercentage: 10,
        total: (sandwich.price + fries.price) * 0.90,
        subtotal: sandwich.price + fries.price,
        imagePath: "",
      ));
    }
    return combos;
  }
}
