import 'package:bom_hamburguer/models/item_model.dart';

class CartOptionsModel {
  ItemModel itemSelected;
  List<ItemModel> extrasAvailable;
  CartOptionsModel({
    required this.itemSelected,
    required this.extrasAvailable,
  });
}
