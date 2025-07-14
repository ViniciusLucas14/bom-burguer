import 'package:bom_hamburguer/models/item_model.dart';

class ItemOptionsModel {
  ItemModel itemSelected;
  List<ItemModel> extrasAvailable;
  ItemOptionsModel({
    required this.itemSelected,
    required this.extrasAvailable,
  });
}
