import 'package:bom_hamburguer/config/database/app_database.dart';
import 'package:bom_hamburguer/enum/item_options_enum.dart';

class ItemService {
  final AppDatabase _db = AppDatabase();
  ItemService();
  Future<List<ItemTableData>> getItemsByOption(ItemOptionEnum option) async {
    return (await _db.select(_db.itemTable).get())
        .where((element) => element.type == option.value)
        .toList();
  }
}
