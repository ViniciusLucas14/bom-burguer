import 'package:bom_hamburguer/domain/service/item_service.dart';
import 'package:bom_hamburguer/enum/item_options_enum.dart';
import 'package:bom_hamburguer/models/item_model.dart';

class ItemRepository {
  final ItemService _itemService = ItemService();
  Future<List<ItemModel>> getItemsByOption(ItemOptionEnum option) async {
    var items = await _itemService.getItemsByOption(option);
    return items
        .map((e) => ItemModel(
            id: e.id, name: e.name, price: e.price, images: e.imagePath, type: e.type))
        .toList();
  }
}
